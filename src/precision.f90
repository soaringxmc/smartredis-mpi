! -
!
! SPDX-FileCopyrightText: Copyright (c) 2024-2025 SmartRedis-MPI contributors.
! SPDX-License-Identifier: MIT
!
! -
module precision
  use mpi, only: MPI_REAL,MPI_DOUBLE_PRECISION
  implicit none
  integer, parameter, public :: sp = selected_real_kind(6 , 37), &
                                dp = selected_real_kind(15,307), &
                                i8 = selected_int_kind(18)
#if defined(_SINGLE_PRECISION)
  integer, parameter, public :: rp = sp
  integer, parameter, public :: MPI_REAL_RP = MPI_REAL
#else
  integer, parameter, public :: rp = dp
  integer, parameter, public :: MPI_REAL_RP = MPI_DOUBLE_PRECISION
#endif
end module precision