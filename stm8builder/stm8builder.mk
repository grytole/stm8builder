PROJECT ?= default
SOURCES ?= $(wildcard *.c)
CHIP    ?= STM8S003
CHIPMOD ?= F3
FLASHER ?= stlinkv2

ifeq ($(strip $(VERBOSE)),)
QUIET = @
endif

CC    = sdcc
MKDIR = mkdir -p
MV    = mv
RM    = rm -rf

OUTPUT_HEXFILE       = $(PROJECT).ihx
STDPERIPH_DRIVER_LIB = stdperiph_driver.a
STM8FLASH            = stm8flash
STM8FLASH_CHIP       = $(shell echo $(CHIP)$(CHIPMOD) | tr '[:upper:]' '[:lower:]')

BUILD_DIR            = $(CURDIR)/build
STM8BUILDER_DIR      = $(CURDIR)/stm8builder
STDPERIPH_DRIVER_DIR = $(STM8BUILDER_DIR)/stdperiph_driver
STM8FLASH_DIR        = $(STM8BUILDER_DIR)/flasher

CFLAGS = --opt-code-size -mstm8 -I$(CURDIR) -I$(STDPERIPH_DRIVER_DIR)/inc -D$(CHIP) -DUSE_STDPERIPH_DRIVER $(DEFINES:%=-D%)
LFLAGS = --out-fmt-ihx -L$(STDPERIPH_DRIVER_DIR) -l$(STDPERIPH_DRIVER_LIB)

all: clean build

$(BUILD_DIR):
	$(QUIET)$(MKDIR) $@

build: $(STDPERIPH_DRIVER_DIR)/$(STDPERIPH_DRIVER_LIB) $(BUILD_DIR) $(CURDIR)/$(OUTPUT_HEXFILE)

$(CURDIR)/$(OUTPUT_HEXFILE): $(STDPERIPH_DRIVER_DIR)/$(STDPERIPH_DRIVER_LIB) $(SOURCES:%.c=$(BUILD_DIR)/%.rel)
	$(QUIET)$(CC) $(CFLAGS) $(LFLAGS) -o $(BUILD_DIR)/$(OUTPUT_HEXFILE) $(SOURCES:%.c=$(BUILD_DIR)/%.rel)
	$(QUIET)$(MV) $(BUILD_DIR)/$(OUTPUT_HEXFILE) $@

$(BUILD_DIR)/%.rel: %.c
	$(QUIET)$(CC) $(CFLAGS) -o $@ -c $<

lib: $(STDPERIPH_DRIVER_DIR)/$(STDPERIPH_DRIVER_LIB)

$(STDPERIPH_DRIVER_DIR)/$(STDPERIPH_DRIVER_LIB):
	$(QUIET)$(MAKE) -C $(STDPERIPH_DRIVER_DIR) CHIP=$(CHIP) VERBOSE=$(VERBOSE)

flash: $(STM8FLASH_DIR)/$(STM8FLASH) $(CURDIR)/$(OUTPUT_HEXFILE)
	$(QUIET)$(STM8FLASH_DIR)/$(STM8FLASH) -c $(FLASHER) -p $(STM8FLASH_CHIP) -w $(CURDIR)/$(OUTPUT_HEXFILE)

clean:
	$(QUIET)$(RM) $(BUILD_DIR) $(CURDIR)/$(OUTPUT_HEXFILE)

realclean: clean
	$(QUIET)$(MAKE) -C $(STDPERIPH_DRIVER_DIR) CHIP=$(CHIP) VERBOSE=$(VERBOSE) clean
	$(QUIET)$(MAKE) -C $(STM8FLASH_DIR) VERBOSE=$(VERBOSE) clean

.PHONY: all build lib flash clean realclean
