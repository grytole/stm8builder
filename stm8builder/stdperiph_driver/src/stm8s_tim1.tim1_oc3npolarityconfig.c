/**
  ******************************************************************************
  * @file    stm8s_tim1.tim1_oc3npolarityconfig.c
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
  * @brief  Configures the TIM1 Channel 3N polarity.
  * @param   TIM1_OCNPolarity specifies the OC3N Polarity.
  * This parameter can be one of the following values:
  *                       - TIM1_OCNPOLARITY_LOW: Output Compare active low
  *                       - TIM1_OCNPOLARITY_HIGH: Output Compare active high
  * @retval None
  */
void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
{
  /* Check the parameters */
  assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
  
  /* Set or Reset the CC3P Bit */
  if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
  {
    TIM1->CCER2 |= TIM1_CCER2_CC3NP;
  }
  else
  {
    TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
  }
}

/**
  * @}
  */
  
/**
  * @}
  */
  

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
