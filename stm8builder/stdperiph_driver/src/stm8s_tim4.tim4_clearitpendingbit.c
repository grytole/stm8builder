/**
  ******************************************************************************
  * @file    stm8s_tim4.tim4_clearitpendingbit.c
  * @author  MCD Application Team
  * @version V2.2.0
  * @date    30-September-2014
  * @brief   This file contains all the functions for the TIM4 peripheral.
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
#include "stm8s_tim4.h"

/** @addtogroup STM8S_StdPeriph_Driver
  * @{
  */
/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/**
  * @addtogroup TIM4_Public_Functions
  * @{
  */

/**
  * @brief Clears the TIM4's interrupt pending bits.
  * @param TIM4_IT specifies the pending bit to clear.
  * This parameter can be one of the following values:
  *                       - TIM4_IT_UPDATE: TIM4 update Interrupt source
  * @retval None.
  */
void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
{
  /* Check the parameters */
  assert_param(IS_TIM4_IT_OK(TIM4_IT));
  
  /* Clear the IT pending Bit */
  TIM4->SR1 = (uint8_t)(~TIM4_IT);
}

/**
  * @}
  */
  
  /**
  * @}
  */
  

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
