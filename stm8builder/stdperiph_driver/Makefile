CHIP ?= STM8S003

ifeq ($(strip $(VERBOSE)),)
QUIET = @
endif

CC    = sdcc
AR    = sdar
MKDIR = mkdir -p
RM    = rm -rf

BUILD_DIR = $(CURDIR)/build
SRC_DIR   = $(CURDIR)/src
INC_DIR   = $(CURDIR)/inc

OBJLIB = stdperiph_driver.a

CFLAGS = -mstm8 --opt-code-size -I$(INC_DIR) -D$(CHIP)
AFLAGS = -rc

BUILD_ARTIFACTS = $(BUILD_DIR) $(OBJLIB)

SRC_FILES  = $(wildcard $(SRC_DIR)/stm8s_awu.*.c)
SRC_FILES += $(wildcard $(SRC_DIR)/stm8s_beep.*.c)
SRC_FILES += $(wildcard $(SRC_DIR)/stm8s_clk.*.c)
SRC_FILES += $(wildcard $(SRC_DIR)/stm8s_exti.*.c)
SRC_FILES += $(SRC_DIR)/stm8s_flash.c
SRC_FILES += $(wildcard $(SRC_DIR)/stm8s_gpio.*.c)
SRC_FILES += $(wildcard $(SRC_DIR)/stm8s_i2c.*.c)
SRC_FILES += $(wildcard $(SRC_DIR)/stm8s_itc.*.c)
SRC_FILES += $(wildcard $(SRC_DIR)/stm8s_iwdg.*.c)
SRC_FILES += $(wildcard $(SRC_DIR)/stm8s_rst.*.c)
SRC_FILES += $(wildcard $(SRC_DIR)/stm8s_spi.*.c)
SRC_FILES += $(wildcard $(SRC_DIR)/stm8s_tim1.*.c)
SRC_FILES += $(wildcard $(SRC_DIR)/stm8s_wwdg.*.c)

ifeq ($(CHIP), $(filter $(CHIP), STM8S105 STM8S005 STM8S103 STM8S003 STM8S903 STM8AF626x STM8AF622x))
  SRC_FILES += $(wildcard $(SRC_DIR)/stm8s_adc1.*.c)
endif
ifeq ($(CHIP), $(filter $(CHIP), STM8S208 STM8S207 STM8S007 STM8AF52Ax STM8AF62Ax))
  SRC_FILES += $(wildcard $(SRC_DIR)/stm8s_adc2.*.c)
endif
ifeq ($(CHIP), $(filter $(CHIP), STM8S208 STM8AF52Ax))
  SRC_FILES += $(SRC_DIR)/stm8s_can.c
endif
ifneq ($(CHIP), $(filter $(CHIP), STM8S903 STM8AF622x))
  SRC_FILES += $(SRC_DIR)/stm8s_tim2.c
endif
ifeq ($(CHIP), $(filter $(CHIP), STM8S208 STM8S207 STM8S007 STM8S105 STM8S005 STM8AF52Ax STM8AF62Ax STM8AF626x))
  SRC_FILES += $(SRC_DIR)/stm8s_tim3.c
endif
ifneq ($(CHIP), $(filter $(CHIP), STM8S903 STM8AF622x))
  SRC_FILES += $(wildcard $(SRC_DIR)/stm8s_tim4.*.c)
endif
ifeq ($(CHIP), $(filter $(CHIP), STM8S903 STM8AF622x))
  SRC_FILES += $(SRC_DIR)/stm8s_tim5.c $(SRC_DIR)/stm8s_tim6.c
endif
ifeq ($(CHIP), $(filter $(CHIP), STM8S208 STM8S207 STM8S007 STM8S103 STM8S003 STM8S903 STM8AF52Ax STM8AF62Ax))
  SRC_FILES += $(wildcard $(SRC_DIR)/stm8s_uart1.*.c)
endif
ifeq ($(CHIP), $(filter $(CHIP), STM8S105 STM8S005 STM8AF626x))
  SRC_FILES += $(SRC_DIR)/stm8s_uart2.c
endif
ifeq ($(CHIP), $(filter $(CHIP), STM8S208 STM8S207 STM8S007 STM8AF52Ax STM8AF62Ax))
  SRC_FILES += $(SRC_DIR)/stm8s_uart3.c
endif
ifeq ($(CHIP), STM8AF622x)
  SRC_FILES += $(SRC_DIR)/stm8s_uart4.c
endif

OBJ_FILES = $(SRC_FILES:%.c=%.rel)

all: $(OBJLIB)

$(BUILD_DIR):
	$(QUIET)$(MKDIR) $@

clean:
	$(QUIET)$(RM) $(BUILD_ARTIFACTS)

$(OBJLIB): $(addprefix $(BUILD_DIR)/, $(notdir $(OBJ_FILES)))
	$(QUIET)$(AR) $(AFLAGS) $@ $^
	
$(BUILD_DIR)/%.rel: $(SRC_DIR)/%.c
	$(QUIET)$(CC) -o $@ $(CFLAGS) -c $^

$(SRC_DIR)/%.c: $(BUILD_DIR)
	
.PHONY: all clean
