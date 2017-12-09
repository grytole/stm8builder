CC = sdcc
AR = sdar

BUILD_DIR = $(CURDIR)/build
SRC_DIR = $(CURDIR)/src
INC_DIR = $(CURDIR)/inc

CHIP ?= STM8S003
CFLAGS = -mstm8 -I$(INC_DIR) -D$(CHIP) -c

ARFLAGS = -rc

STDLIB_URL = http://www.st.com/resource/en/firmware/stsw-stm8069.zip

STDLIB_ZIP = stm8s_stdlib.zip

OBJLIB = stm8s_stdlib.a

BUILD_ARTIFACTS = $(BUILD_DIR) $(SRC_DIR) $(INC_DIR) $(OBJLIB) $(STDLIB_ZIP)

SRC_FILES = stm8s_awu.c stm8s_beep.c stm8s_clk.c stm8s_exti.c stm8s_flash.c stm8s_gpio.c stm8s_i2c.c stm8s_itc.c stm8s_iwdg.c stm8s_rst.c stm8s_spi.c stm8s_tim1.c stm8s_wwdg.c

ifeq ($(CHIP), $(filter $(CHIP), STM8S105 STM8S005 STM8S103 STM8S003 STM8S903 STM8AF626x))
	SRC_FILES += stm8s_adc1.c
endif
ifeq ($(CHIP), $(filter $(CHIP), STM8S208 STM8S207 STM8S007 STM8AF52Ax STM8AF62Ax))
	SRC_FILES += stm8s_adc2.c
endif
ifeq ($(CHIP), $(filter $(CHIP), STM8S208 STM8AF52Ax))
	SRC_FILES += stm8s_can.c
endif
ifneq ($(CHIP), STM8S903)
	SRC_FILES += stm8s_tim2.c
endif
ifeq ($(CHIP), $(filter $(CHIP), STM8S208 STM8S207 STM8S007 STM8S105 STM8S005 STM8AF52Ax STM8AF62Ax STM8AF626x))
	SRC_FILES += stm8s_tim3.c
endif
ifneq ($(CHIP), STM8S903)
	SRC_FILES += stm8s_tim4.c
endif
ifeq ($(CHIP), STM8S903)
	SRC_FILES += stm8s_tim5.c stm8s_tim6.c
endif
ifeq ($(CHIP), $(filter $(CHIP), STM8S208 STM8S207 STM8S007 STM8S103 STM8S003 STM8S903 STM8AF52Ax STM8AF62Ax))
	SRC_FILES += stm8s_uart1.c
endif
ifeq ($(CHIP), $(filter $(CHIP), STM8S105 STM8S005 STM8AF626x))
	SRC_FILES += stm8s_uart2.c
endif
ifeq ($(CHIP), $(filter $(CHIP), STM8S208 STM8S207 STM8S007 STM8AF52Ax STM8AF62Ax))
	SRC_FILES += stm8s_uart3.c
endif

OBJ_FILES = $(SRC_FILES:%.c=%.rel)

all: $(OBJLIB)

$(STDLIB_ZIP):
	wget -O $(STDLIB_ZIP) $(STDLIB_URL)

.unzip: $(STDLIB_ZIP)
	unzip -j -o $(STDLIB_ZIP) 'STM8S_StdPeriph_Lib/Libraries/STM8S_StdPeriph_Driver/inc/*' -d $(INC_DIR)
	unzip -j -o $(STDLIB_ZIP) 'STM8S_StdPeriph_Lib/Libraries/STM8S_StdPeriph_Driver/src/*' -d $(SRC_DIR)
	unzip -j -o $(STDLIB_ZIP) 'STM8S_StdPeriph_Lib/Project/STM8S_StdPeriph_Template/stm8s_conf.h'
	touch $@

.patch:
	cp -f stm8s.h.sdcc $(INC_DIR)/stm8s.h
	cp -f stm8s_itc.c.sdcc $(SRC_DIR)/stm8s_itc.c
	mv stm8s_conf.h inc/stm8s_conf.h
	touch $@

.prepare: .unzip .patch
	mkdir -p $(BUILD_DIR)
	touch $@

clean:
	rm -rf $(BUILD_ARTIFACTS) .unzip .patch .prepare

$(OBJLIB): $(addprefix $(BUILD_DIR)/, $(OBJ_FILES))
	$(AR) $(ARFLAGS) $(OBJLIB) $^
	
$(BUILD_DIR)/%.rel: $(SRC_DIR)/%.c
	$(CC) -o $@ $(CFLAGS) $^


$(SRC_DIR)/%.c: .prepare

	
.PHONY: all clean


.PRECIOUS: $(SRC_DIR)/%.c
