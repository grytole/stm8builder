/**
  ******************************************************************************
  * @file    stm8s_i2c.i2c_softwareresetcmd.c
  * @author  MCD Application Team
  * @version V2.2.0
  * @date    30-September-2014
  * @brief   This file contains all the functions for the I2C peripheral.
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
#include "stm8s_i2c.h"

/** @addtogroup STM8S_StdPeriph_Driver
  * @{
  */
/* Private typedef -----------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/**
  * @addtogroup I2C_Public_Functions
  * @{
  */

/**
  * @brief  Enables or disables I2C software reset.
  * @param  NewState : Specifies the new state of the I2C software reset.
  *         This parameter can be any of the @ref FunctionalState enumeration.
  * @retval None
  */
void I2C_SoftwareResetCmd(FunctionalState NewState)
{
  /* Check function parameters */
  assert_param(IS_FUNCTIONALSTATE_OK(NewState));

  if (NewState != DISABLE)
  {
    /* Peripheral under reset */
    I2C->CR2 |= I2C_CR2_SWRST;
  }
  else /* NewState == DISABLE */
  {
    /* Peripheral not under reset */
    I2C->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
  }
}

/**
  * @}
  */

/**
  * @}
  */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
