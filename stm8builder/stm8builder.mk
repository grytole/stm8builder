ifeq ($(strip $(PROJECT)),)
  $(error "Project config must have PROJECT parameter (eg, 'PROJECT = blink')")
endif
ifeq ($(strip $(CHIP)),)
  $(error "Project config must have CHIP parameter (eg, 'CHIP = STM8S103' for [stm8s103]f3p6)")
endif
ifeq ($(strip $(CHIPMOD)),)
  $(error "Project config must have CHIPMOD parameter (eg, 'CHIPMOD = F3' for stm8s103[f3]p6)")
endif
ifeq ($(strip $(SOURCES)),)
  $(error "Project config must have SOURCES parameter (eg, 'SOURCES = first.c second.c third.c ...')")
endif
FLASHER ?= stlinkv2
ifneq ($(strip $(FLASHER)),$(filter $(FLASHER),stlink stlinkv2 espstlink))
  $(error "Project config must have supported FLASHER parameter (eg, 'FLASHER = stlink') or it may be unset ('stlinkv2' is default)")
endif

SDCC = sdcc
STM8BUILDER_DIR = $(CURDIR)/stm8builder
STM8FLASH = stm8flash
STM8FLASH_DONGLE = $(FLASHER)
STM8FLASH_CHIP = $(shell echo $(CHIP)$(CHIPMOD) | tr '[:upper:]' '[:lower:]')
BUILD_DIR = $(STM8BUILDER_DIR)/build
OUTPUT_HEXFILE = $(PROJECT).ihx
STDPERIF_DIR = $(STM8BUILDER_DIR)/stdperif
FLASHER_DIR = $(STM8BUILDER_DIR)/flasher
CFLAGS = -lstm8 -mstm8 -I$(CURDIR) -I$(STDPERIF_DIR)/inc -D$(CHIP) -DUSE_STDPERIPH_DRIVER $(FLAGS)

all: clean build

env:
	@echo "========================[ BUILD ]============================"
	@echo " PROJECT : $(PROJECT)"
	@echo " CHIP    : $(CHIP)"
	@echo " CHIPMOD : $(CHIPMOD)"
	@echo " SOURCES : $(SOURCES)"
	@echo " FLAGS   : $(FLAGS)"
	@echo " MODULES : $(MODULES)"
	@echo "============================================================="

$(BUILD_DIR):
	mkdir -p $@

lib:
	$(MAKE) -C $(STDPERIF_DIR) CHIP=$(CHIP)

build: env $(BUILD_DIR) lib $(CURDIR)/$(OUTPUT_HEXFILE)

$(CURDIR)/$(OUTPUT_HEXFILE): $(SOURCES:%.c=$(BUILD_DIR)/%.rel) $(MODULES:%=$(STDPERIF_DIR)/build/stm8s_%.rel)
	$(SDCC) $(CFLAGS) --out-fmt-ihx -o $(BUILD_DIR)/$(OUTPUT_HEXFILE) $^
	mv $(BUILD_DIR)/$(OUTPUT_HEXFILE) $@

$(BUILD_DIR)/%.rel: %.c
	$(SDCC) $(CFLAGS) -o $@ -c $<

flash: build $(STM8BUILDER_DIR)/$(STM8FLASH)
	@echo "========================[ FLASH ]============================"
	@echo " PROJECT : $(PROJECT)"
	@echo " HEXFILE : $(OUTPUT_HEXFILE)"
	@echo " CHIP    : $(CHIP)"
	@echo " CHIPMOD : $(CHIPMOD)"
	@echo " FLASHER : $(STM8FLASH_DONGLE)"
	@echo "============================================================="
	$(STM8BUILDER_DIR)/$(STM8FLASH) -c $(STM8FLASH_DONGLE) -p $(STM8FLASH_CHIP) -w $(CURDIR)/$(OUTPUT_HEXFILE)

$(STM8BUILDER_DIR)/$(STM8FLASH):
	$(MAKE) -C $(FLASHER_DIR)
	mv $(FLASHER_DIR)/build/$(STM8FLASH) $(STM8BUILDER_DIR)

clean:
	rm -rf $(BUILD_DIR) $(CURDIR)/$(OUTPUT_HEXFILE)

realclean: clean
	$(MAKE) -C $(STDPERIF_DIR) clean
	$(MAKE) -C $(FLASHER_DIR) clean
	rm -f $(STM8BUILDER_DIR)/$(STM8FLASH)

.PHONY: all env build clean flash lib realclean
