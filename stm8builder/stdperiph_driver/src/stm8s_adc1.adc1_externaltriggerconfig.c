/**
  ******************************************************************************
  * @file    stm8s_adc1.adc1_externaltriggerconfig.c
  * @author  MCD Application Team
  * @version V2.2.0
  * @date    30-September-2014
  * @brief   This file contains all the functions/macros for the ADC1 peripheral.
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
#include "stm8s_adc1.h"

/** @addtogroup STM8S_StdPeriph_Driver
  * @{
  */
/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/
/* Public functions ----------------------------------------------------------*/

/**
  * @addtogroup ADC1_Public_Functions
  * @{
  */

/**
  * @brief  Configure the ADC1 conversion on external trigger event.
  * @par Full description:
  * The selected external trigger event can be enabled or disabled.
  * @param   ADC1_ExtTrigger to select the External trigger event.
  * can have one of the values of @ref ADC1_ExtTrig_TypeDef.
  * @param   NewState to enable/disable the selected external trigger
  * can have one of the values of @ref FunctionalState.
  * @retval None
  */
void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
{
  /* Check the parameters */
  assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
  assert_param(IS_FUNCTIONALSTATE_OK(NewState));
  
  /* Clear the external trigger selection bits */
  ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
  
  if (NewState != DISABLE)
  {
    /* Enable the selected external Trigger */
    ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
  }
  else /* NewState == DISABLE */
  {
    /* Disable the selected external trigger */
    ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
  }
  
  /* Set the selected external trigger */
  ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
}

/**
  * @}
  */
  
/**
  * @}
  */
  

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
