export APPS_DIR := $(TOP_DIR)/apps
export PLATFORM_DIR := $(TOP_DIR)/platforms/$(PLATFORM)

include $(PLATFORM_DIR)/tools/build_env.mk

export TOOLCHAIN_BIN_PREFIX ?=

export CONFIGURE_HELPER ?= $(TOP_DIR)/tools/configure_helper.sh
export MAKE_PATCH ?= $(TOP_DIR)/tools/make_patch.sh

export COMMON_DIR   ?= $(TOP_DIR)/platforms/common
export CONSTANT_DIR ?= $(PLATFORM_DIR)/constant_files
export STAGING_DIR  ?= $(PLATFORM_DIR)/staging_files
export INSTALL_DIR  ?= $(PLATFORM_DIR)/install_files

export COMMON_INCLUDE   := $(COMMON_DIR)/include
export STAGING_INCLUDE  := $(STAGING_DIR)/include
export STAGING_LIB      := $(STAGING_DIR)/lib
export CONSTANT_INCLUDE := $(CONSTANT_DIR)/include
export CONSTANT_LIB     := $(CONSTANT_DIR)/lib

export BUILD_DIR := $(PLATFORM_DIR)/build_files

COMPILE_FLAGS := -I$(STAGING_INCLUDE) -I$(CONSTANT_INCLUDE) -I$(COMMON_INCLUDE)
LINK_FLAGS    := -L$(STAGING_LIB) -L$(CONSTANT_LIB)

ifeq ($(RELEASE), 1)
COMPILE_FLAGS += -O2 -Os
else
COMPILE_FLAGS += -DDEBUG=1 -O0 -ggdb
ifeq ($(ENABLE_ASAN), 1)
COMPILE_FLAGS += -fsanitize=address -fno-omit-frame-pointer
LINK_FLAGS    += -fsanitize=address -static-libasan
endif
endif

export CFLAGS   := $(COMPILE_FLAGS)
export CXXFLAGS := $(COMPILE_FLAGS)
export LDFLAGS  := $(LINK_FLAGS)

export AR := $(TOOLCHAIN_BIN_PREFIX)ar
export AS := $(TOOLCHAIN_BIN_PREFIX)as
export CXX := $(TOOLCHAIN_BIN_PREFIX)g++
export CC := $(TOOLCHAIN_BIN_PREFIX)gcc
export NM := $(TOOLCHAIN_BIN_PREFIX)nm
export OBJCOPY := $(TOOLCHAIN_BIN_PREFIX)objcopy
export OBJDUMP := $(TOOLCHAIN_BIN_PREFIX)objdump
export STRINGS := $(TOOLCHAIN_BIN_PREFIX)strings
export SSTRIP := $(TOOLCHAIN_BIN_PREFIX)sstrip
export LSTRIP := $(TOOLCHAIN_BIN_PREFIX)lstrip
export STRIP := $(TOOLCHAIN_BIN_PREFIX)strip
