FC = mpifort
# Set SINGLE_PRECISION to 1 to use single precision, otherwise use double precision
# For a library dealing with MPI communication and data processing, 
# -O2 is typically sufficient and recommended for production use.
SINGLE_PRECISION = 0
FCFLAGS = -O2 -fPIC -I/scratch/maochao/code/smartredis/install/include -cpp

# Add single precision flag if enabled, i.e. make SINGLE_PRECISION=1
ifeq ($(SINGLE_PRECISION),1)
FCFLAGS += -D_SINGLE_PRECISION
endif

# Add SmartRedis library paths and libraries
LDFLAGS = -L/scratch/maochao/code/smartredis/install/lib
LIBS = -lsmartredis -lsmartredis-fortran

# Directory structure
BUILD_DIR = build
OBJ_DIR = $(BUILD_DIR)
MOD_DIR = $(BUILD_DIR)/include
LIB_DIR = $(BUILD_DIR)/lib

# Source files (adjust paths if necessary)
SRCS = src/precision.f90 src/smartredis_mpi.f90
OBJS = $(patsubst src/%.f90,$(OBJ_DIR)/%.o,$(SRCS))

# Library names
LIB_STATIC = $(LIB_DIR)/libsmartredis_mpi.a
LIB_SHARED = $(LIB_DIR)/libsmartredis_mpi.so

all: create_dirs $(LIB_STATIC) $(LIB_SHARED)

create_dirs:
	mkdir -p $(OBJ_DIR)
	mkdir -p $(MOD_DIR)
	mkdir -p $(LIB_DIR)

$(OBJ_DIR)/%.o: src/%.f90
	$(FC) $(FCFLAGS) -J$(MOD_DIR) -c $< -o $@

$(LIB_STATIC): $(OBJS)
	ar rcs $@ $(OBJS)

$(LIB_SHARED): $(OBJS)
	$(FC) -shared -o $@ $(OBJS) $(LDFLAGS) $(LIBS)

clean:
	rm -rf $(BUILD_DIR)