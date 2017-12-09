STM8FLASH = stm8flash
STM8FLASH_URL = http://github.com/vdudouyt/stm8flash/archive/master.zip
STM8FLASH_ZIP = stm8flash.zip
BUILD_DIR = ./build

all: $(STM8FLASH)

$(STM8FLASH_ZIP):
	wget -O $(STM8FLASH_ZIP) $(STM8FLASH_URL)

unzip: $(STM8FLASH_ZIP)
	unzip -j -o $(STM8FLASH_ZIP) -d $(BUILD_DIR)

prepare: $(BUILD_DIR)

$(BUILD_DIR):
	mkdir -p $@

$(STM8FLASH): prepare unzip
	make -C $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR) $(STM8FLASH_ZIP)

.PHONY: all unzip prepare clean
