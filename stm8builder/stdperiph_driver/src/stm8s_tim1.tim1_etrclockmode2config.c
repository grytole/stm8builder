/**
  ******************************************************************************
  * @file    stm8s_tim1.tim1_etrclockmode2config.c
  * @author  MCD Application Team
  * @version V2.2.0
  * @date    30-September-2014
  * @brief   This file contains all the functions for the TIM1 peripheral.
   ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2014 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software 
  * distributed under the License is distributed on an "AS IS" BASIS, 
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  *
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "stm8s_tim1.h"

/** @addtogroup STM8S_StdPeriph_Driver
  * @{
  */
/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/

/**
  * @addtogroup TIM1_Public_Functions
  * @{
  */

/**
  * @brief  Configures the TIM1 External clock Mode2.
  * @param  TIM1_ExtTRGPrescaler specifies the external Trigger Prescaler.
  *         This parameter can be one of the following values:
  *                       - TIM1_EXTTRGPSC_OFF
  *                       - TIM1_EXTTRGPSC_DIV2
  *                       - TIM1_EXTTRGPSC_DIV4
  *                       - TIM1_EXTTRGPSC_DIV8.
  * @param  TIM1_ExtTRGPolarity specifies the external Trigger Polarity.
  *         This parameter can be one of the following values:
  *                       - TIM1_EXTTRGPOLARITY_INVERTED
  *                       - TIM1_EXTTRGPOLARITY_NONINVERTED
  * @param  ExtTRGFilter specifies the External Trigger Filter.
  *         This parameter must be a value between 0x00 and 0x0F
  * @retval None
  */
void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
                              TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
                              uint8_t ExtTRGFilter)
{
  /* Check the parameters */
  assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
  assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
  
  /* Configure the ETR Clock source */
  TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
  
  /* Enable the External clock mode2 */
  TIM1->ETR |= TIM1_ETR_ECE;
}

/**
  * @}
  */
  
/**
  * @}
  */
  

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
