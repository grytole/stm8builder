#include "stm8s.h"

void Delay(uint16_t nCount) {
  while (nCount != 0) {
    nCount--;
  }
}

void main(void) {

  GPIO_Init(GPIOB, GPIO_PIN_5, GPIO_MODE_OUT_PP_LOW_FAST);

  while (1) {
    GPIO_WriteReverse(GPIOB, GPIO_PIN_5);
    Delay(0xFFFF);
  }

}

#ifdef USE_FULL_ASSERT
void assert_failed(uint8_t* file, uint32_t line) { 
  (void)file;
  (void)line;
  while (1) { }
}
#endif
