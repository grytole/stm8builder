ifeq ($(strip $(VERBOSE)),)
QUIET = @
endif

MKDIR = mkdir -p
RM    = rm -rf

STM8FLASH     = stm8flash
STM8FLASH_URL = http://github.com/vdudouyt/stm8flash/archive/master.zip
STM8FLASH_ZIP = $(CURDIR)/stm8flash.zip

BUILD_DIR = $(CURDIR)/build

all: $(BUILD_DIR)/$(STM8FLASH)

$(STM8FLASH_ZIP):
	$(QUIET)wget -O $@ $(STM8FLASH_URL)
	$(QUIET)unzip -j -o $@ -d $(BUILD_DIR)

$(BUILD_DIR):
	$(QUIET)$(MKDIR) $@

$(BUILD_DIR)/$(STM8FLASH): $(BUILD_DIR) $(STM8FLASH_ZIP)
	$(QUIET)$(MAKE) -C $(BUILD_DIR)

clean:
	$(QUIET)$(RM) $(BUILD_DIR) $(STM8FLASH_ZIP)

.PHONY: all clean
