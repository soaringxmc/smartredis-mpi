! Note the below macros are here to allow compilation with Nvidia drivers
! While assumed size should be sufficient, this does not seem to work with
! Intel and GNU (however those have support for assumed rank)
#if defined (_NVCOMPILER)
#define DIM_RANK_SPEC dimension(*)
#else
#define DIM_RANK_SPEC dimension(..)
#endif

module smartredis_mpi
  use mpi
  use precision, only: rp,MPI_REAL_RP
  use smartredis_client, only: CLIENT_TYPE
  implicit none

  integer :: nprocs, myid, ierr
  integer :: mpi_comm = MPI_COMM_WORLD ! default communicator in CFD simulations
  
  private
  public :: init_smartredis_mpi,finalize_smartredis_mpi, &
            put_step_type,put_state,put_reward,get_action

  type(CLIENT_TYPE) :: client

  contains

  subroutine init_smartredis_mpi(db_clustered, comm)
    implicit none
    logical, intent(in) :: db_clustered
    integer, intent(in), optional :: comm
    integer :: error
    logical :: is_error
    
    if (present(comm)) then
      mpi_comm = comm
    else
      mpi_comm = MPI_COMM_WORLD
    end if
    
    call MPI_Comm_rank(mpi_comm, myid, ierr)
    call MPI_Comm_size(mpi_comm, nprocs, ierr)

    if(myid == 0) then
      error = client%initialize(db_clustered)
      is_error = client%SR_error_parser(error)
      if(is_error) stop 'Error in SmartRedis client initialization.'
    end if
  end subroutine init_smartredis_mpi

  subroutine put_step_type(key,step_type)
    character(len=*), intent(in) :: key
    integer, intent(in) :: step_type
    integer :: error
    logical :: is_error

    if(myid == 0) then
      error = client%put_tensor(key,[step_type],shape([step_type]))
      is_error = client%SR_error_parser(error)
      if(is_error) stop 'Error in SmartRedis put_step_type.'
    end if
  end subroutine put_step_type

  subroutine put_state(key,dims,state)
    implicit none
    character(len=*), intent(in) :: key
    integer, intent(in), dimension(:) :: dims
    real(rp), intent(in), dimension(product(dims)) :: state
    integer, dimension(:), allocatable :: state_sizes,state_displs
    real(rp), dimension(:), allocatable :: state_global
    integer :: state_size,state_global_size,counter,i,error
    logical :: is_error

    state_size = product(dims)

    allocate(state_sizes(nprocs))
    call MPI_GATHER(state_size,1,MPI_INTEGER, &
                    state_sizes,1,MPI_INTEGER, &
                      0,mpi_comm,ierr)

    allocate(state_displs(nprocs))
    if(myid == 0) then
      counter = 0
      do i = 1,nprocs
        state_displs(i) = counter
        counter = counter + state_sizes(i)
      end do
      state_global_size = counter
    end if
    allocate(state_global(state_global_size))

    call MPI_GATHERV(state,state_size,MPI_REAL_RP, &
                     state_global,state_sizes,state_displs,MPI_REAL_RP, &
                       0,mpi_comm,ierr)

    if(myid == 0) then
      print *, 'putting state tensor'
      error = client%put_tensor(key,state_global,shape(state_global))
      is_error = client%SR_error_parser(error)
      if(is_error) stop 'Error in SmartRedis send_state.'
    end if
  end subroutine put_state
  !

  subroutine put_reward(key,dims,reward)
    implicit none
    character(len=*), intent(in) :: key
    integer, intent(in), dimension(:) :: dims
    real(rp), intent(in), dimension(product(dims)) :: reward
    integer, dimension(:), allocatable :: reward_sizes,reward_displs
    real(rp), dimension(:), allocatable :: reward_global
    integer :: reward_size,reward_global_size,counter,i,error
    logical :: is_error

    reward_size = size(reward)

    allocate(reward_sizes(nprocs))
    call MPI_GATHER(reward_size,1,MPI_INTEGER, &
                    reward_sizes,1,MPI_INTEGER, &
                      0,mpi_comm,ierr)

    allocate(reward_displs(nprocs))
    if(myid == 0) then
      counter = 0
      do i = 1,nprocs
        reward_displs(i) = counter
        counter = counter + reward_sizes(i)
      end do
      reward_global_size = counter
    end if
    allocate(reward_global(reward_global_size))

    call MPI_GATHERV(reward,reward_size,MPI_REAL_RP, &
                     reward_global,reward_sizes,reward_displs,MPI_REAL_RP, &
                       0,mpi_comm,ierr)

    if(myid == 0) then
      print *, 'putting reward tensor'
      error = client%put_tensor(key,reward_global,shape(reward_global))
      is_error = client%SR_error_parser(error)
      if(is_error) stop 'Error in SmartRedis send_reward.'
    end if
  end subroutine put_reward

  subroutine get_action(key,dims,action)
    implicit none
    character(len=*), intent(in) :: key
    integer, intent(in), dimension(:) :: dims
    real(rp), intent(out), dimension(product(dims)) :: action
    integer, parameter :: interval = 10 ! polling interval in ms
    integer, parameter :: tries = 10000 ! number of polling tries
    integer, dimension(:), allocatable :: action_sizes,action_displs
    real(rp), dimension(:), allocatable :: action_global
    integer :: action_size,action_global_size,counter,i,error
    logical :: exists,is_error
    
    action_size = size(action)

    allocate(action_sizes(nprocs))
    call MPI_GATHER(action_size ,1,MPI_INTEGER, &
                    action_sizes,1,MPI_INTEGER, &
                      0,mpi_comm,ierr)

    allocate(action_displs(nprocs))
    if(myid == 0) then
      counter = 0
      do i = 1,nprocs
        action_displs(i) = counter
        counter = counter + action_sizes(i)
      end do
      action_global_size = counter
    end if
    allocate(action_global(action_global_size))

    if(myid == 0) then
      print *, 'polling action tensor'
      error = client%poll_tensor(trim(adjustl(key)),interval,tries,exists)
      is_error = client%SR_error_parser(error)
      if(is_error) stop 'Error in SmartRedis get_action. Action tensor not found.'
      print *, 'unpacking action tensor'
      error = client%unpack_tensor(trim(adjustl(key)),action_global,shape(action_global))
      is_error = client%SR_error_parser(error)
      if(is_error) stop 'Error in SmartRedis get_action. Tensor could not be unpacked.'
      print *, 'deleting action tensor'
      error = client%delete_tensor(trim(adjustl(key)))
      is_error = client%SR_error_parser(error)
      if(is_error) stop 'Error in SmartRedis get_action. Tensor could not be deleted.'
    end if

    call MPI_SCATTERV(action_global,action_sizes,action_displs,MPI_REAL_RP, &
                      action,action_size,MPI_REAL_RP, &
                        0,mpi_comm,ierr)
  end subroutine get_action

  subroutine finalize_smartredis_mpi()
    implicit none
    integer :: error
    logical :: is_error
    if(myid == 0) then
      if(client%isinitialized()) then
        error = client%destructor()
        is_error = client%SR_error_parser(error)
        if(is_error) stop 'Error in SmartRedis client destruction'
      end if
    end if
  end subroutine finalize_smartredis_mpi

end module smartredis_mpi