/**
  ******************************************************************************
  * @file    stm8s_clk.clk_slowactivehaltwakeupcmd.c
  * @author  MCD Application Team
  * @version V2.2.0
  * @date    30-September-2014
  * @brief   This file contains all the functions for the CLK peripheral.
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

#include "stm8s_clk.h"

/** @addtogroup STM8S_StdPeriph_Driver
  * @{
  */
/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private Constants ---------------------------------------------------------*/

/* Public functions ----------------------------------------------------------*/
/**
  * @addtogroup CLK_Public_Functions
  * @{
  */

/**
  * @brief  Configures the slow active halt wake up
  * @param   NewState: specifies the Slow Active Halt wake up state.
  * can be set of the following values:
  * - DISABLE: Slow Active Halt mode disabled;
  * - ENABLE:  Slow Active Halt mode enabled.
  * @retval None
  */
void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
{
  /* check the parameters */
  assert_param(IS_FUNCTIONALSTATE_OK(NewState));
  
  if (NewState != DISABLE)
  {
    /* Set S_ACTHALT bit */
    CLK->ICKR |= CLK_ICKR_SWUAH;
  }
  else
  {
    /* Reset S_ACTHALT bit */
    CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
  }
}

/**
  * @}
  */
  
/**
  * @}
  */
  

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
