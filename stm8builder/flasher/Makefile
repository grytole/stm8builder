ifeq ($(strip $(VERBOSE)),)
QUIET  = @
TONULL = > /dev/null
endif

MKDIR = mkdir -p
RM    = rm -rf
MV    = mv

STM8FLASH     = stm8flash
STM8FLASH_URL = http://github.com/vdudouyt/stm8flash/archive/master.zip
STM8FLASH_ZIP = $(CURDIR)/stm8flash.zip

BUILD_DIR = $(CURDIR)/build

all: $(CURDIR)/$(STM8FLASH)

$(STM8FLASH_ZIP):
	$(QUIET)wget -q -O $@ $(STM8FLASH_URL) $(TONULL)
	$(QUIET)unzip -j -o $@ -d $(BUILD_DIR) $(TONULL)

$(BUILD_DIR):
	$(QUIET)$(MKDIR) $@

$(CURDIR)/$(STM8FLASH): $(BUILD_DIR) $(STM8FLASH_ZIP)
	$(QUIET)$(MAKE) -C $(BUILD_DIR) $(TONULL)
	$(QUIET)$(MV) $(BUILD_DIR)/$(STM8FLASH) $(CURDIR)/$(STM8FLASH)

clean:
	$(QUIET)$(RM) $(BUILD_DIR) $(STM8FLASH_ZIP) $(CURDIR)/$(STM8FLASH)

.PHONY: all clean
