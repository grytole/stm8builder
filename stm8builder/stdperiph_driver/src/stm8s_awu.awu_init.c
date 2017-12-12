/**
  ******************************************************************************
  * @file    stm8s_awu.awu_init.c
  * @author  MCD Application Team
  * @version V2.2.0
  * @date    30-September-2014
  * @brief   This file contains all the functions for the AWU peripheral.  
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
#include "stm8s_awu.h"

/** @addtogroup STM8S_StdPeriph_Driver
  * @{
  */
/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/* See also AWU_Timebase_TypeDef structure in stm8s_awu.h file :
                          N   2   5   1   2   4   8   1   3   6   1   2   5   1   2   1   3
                          O   5   0   m   m   m   m   6   2   4   2   5   1   s   s   2   0
                          I   0   0   s   s   s   s   m   m   m   8   6   2           s   s
                          T   u   u                   s   s   s   m   m   m
                              s   s                               s   s   s
*/
/** Contains the different values to write in the APR register (used by AWU_Init function) */
CONST uint8_t APR_Array[17] =
    {
        0, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 61, 23, 23, 62
    };

/** Contains the different values to write in the TBR register (used by AWU_Init function) */
CONST uint8_t TBR_Array[17] =
    {
        0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 12, 14, 15, 15
    };

/* Public functions ----------------------------------------------------------*/

/**
  * @addtogroup AWU_Public_Functions
  * @{
  */

/**
  * @brief  Initializes the AWU peripheral according to the specified parameters.
  * @param   AWU_TimeBase : Time base selection (interval between AWU interrupts).
  * can be one of the values of @ref AWU_Timebase_TypeDef.
  * @retval None
  * @par Required preconditions:
  * The LS RC calibration must be performed before calling this function.
  */
void AWU_Init(AWU_Timebase_TypeDef AWU_TimeBase)
{
  /* Check parameter */
  assert_param(IS_AWU_TIMEBASE_OK(AWU_TimeBase));
  
  /* Enable the AWU peripheral */
  AWU->CSR |= AWU_CSR_AWUEN;
  
  /* Set the TimeBase */
  AWU->TBR &= (uint8_t)(~AWU_TBR_AWUTB);
  AWU->TBR |= TBR_Array[(uint8_t)AWU_TimeBase];
  
  /* Set the APR divider */
  AWU->APR &= (uint8_t)(~AWU_APR_APR);
  AWU->APR |= APR_Array[(uint8_t)AWU_TimeBase];
}

/**
  * @}
  */
  
/**
  * @}
  */
  

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
