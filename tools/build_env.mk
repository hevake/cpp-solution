export APPS_DIR := $(TOP_DIR)/apps
export PLATFORM_DIR := $(TOP_DIR)/platforms/$(PLATFORM)

include $(PLATFORM_DIR)/tools/build_env.mk

export CONSTANT_DIR := $(PLATFORM_DIR)/constant_files
export STAGING_DIR := $(PLATFORM_DIR)/staging_files
export INSTALL_DIR := $(PLATFORM_DIR)/install_files

export STAGING_INCLUDE := $(STAGING_DIR)/include
export STAGING_LIB := $(STAGING_DIR)/lib
export CONSTANT_INCLUDE := $(CONSTANT_DIR)/include
export CONSTANT_LIB := $(CONSTANT_DIR)/lib

INCLUDE_FLAGS := -I$(STAGING_INCLUDE) -I$(CONSTANT_INCLUDE)
LINK_FLAGS := -L$(STAGING_LIB) -L$(CONSTANT_LIB)

export CFLAGS := $(INCLUDE_FLAGS) -std=c99
export CXXFLAGS := $(INCLUDE_FLAGS) -std=c++11
export LDFLAGS := $(LINK_FLAGS)
export DESTDIR := $(STAGING_DIR)
export prefix := $(STAGING_DIR)

export AR := $(TOOLCHAIN_PREFIX)ar
export AS := $(TOOLCHAIN_PREFIX)as
export CXX := $(TOOLCHAIN_PREFIX)g++
export CC := $(TOOLCHAIN_PREFIX)gcc
export NM := $(TOOLCHAIN_PREFIX)nm
export OBJCOPY := $(TOOLCHAIN_PREFIX)objcopy
export OBJDUMP := $(TOOLCHAIN_PREFIX)objdump
export STRINGS := $(TOOLCHAIN_PREFIX)strings
export SSTRIP := $(TOOLCHAIN_PREFIX)sstrip
export LSTRIP := $(TOOLCHAIN_PREFIX)lstrip
export STRIP := $(TOOLCHAIN_PREFIX)strip
