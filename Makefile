# Compiler type: GNU or NVIDIA
COMPILER = NVIDIA
# Set SINGLE_PRECISION to 1 to use single precision, otherwise use double precision
SINGLE_PRECISION = 0
# SmartRedis installation directory
SMARTREDIS_INSTALL_DIR = /leonardo/home/userexternal/mxiao000/code/smartredis-nvidia/install

# Set module flag based on compiler type
ifeq ($(COMPILER),GNU)
  FC = mpifort
  MODULE_FLAG = -J
else ifeq ($(COMPILER),NVIDIA)
  FC = mpifort
  MODULE_FLAG = -module
else
  $(error Invalid COMPILER value. Must be GNU or NVIDIA)
endif

# For a library dealing with MPI communication and data processing, 
# -O2 is typically sufficient and recommended for production use.
FCFLAGS = -O2 -fPIC -I$(SMARTREDIS_INSTALL_DIR)/include -cpp

# Add single precision flag if enabled, i.e. make SINGLE_PRECISION=1
ifeq ($(SINGLE_PRECISION),1)
FCFLAGS += -D_SINGLE_PRECISION
endif

# Add SmartRedis library paths and libraries
LDFLAGS = -L$(SMARTREDIS_INSTALL_DIR)/lib
LIBS = -lsmartredis -lsmartredis-fortran

# Directory structure
BUILD_DIR = build
OBJ_DIR = $(BUILD_DIR)
MOD_DIR = $(BUILD_DIR)/include
LIB_DIR = $(BUILD_DIR)/lib

FCFLAGS += -I$(MOD_DIR)

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
	$(FC) $(FCFLAGS) $(MODULE_FLAG) $(MOD_DIR) -c $< -o $@

$(LIB_STATIC): $(OBJS)
	ar rcs $@ $(OBJS)

$(LIB_SHARED): $(OBJS)
	$(FC) -shared -o $@ $(OBJS) $(LDFLAGS) $(LIBS)

clean:
	rm -rf $(BUILD_DIR)

# Debug targets to print variables
debug:
	@echo "COMPILER_TYPE=$(COMPILER_TYPE)"
	@echo "FC=$(FC)"
	@echo "FCFLAGS=$(FCFLAGS)"

# Generic target to print any variable, usage: make print-VARIABLE_NAME
print-%:
	@echo $*=$($*)
