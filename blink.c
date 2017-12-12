#include "stm8s.h"

#if defined (BLINKSLOW)
uint16_t period = 0xffff;
#else
uint16_t period = 0x7fff;
#endif

void delay(uint16_t ticks) {
  while (ticks != 0) {
    ticks--;
  }
}

void main(void) {

  GPIO_Init(GPIOB, GPIO_PIN_5, GPIO_MODE_OUT_PP_LOW_FAST);

  while (1) {
    GPIO_WriteReverse(GPIOB, GPIO_PIN_5);
    delay(period);
  }

}
