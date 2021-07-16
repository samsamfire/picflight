/*******************************************************************************
 System Interrupts File

  Company:
    Microchip Technology Inc.

  File Name:
    interrupt.c

  Summary:
    Interrupt vectors mapping

  Description:
    This file maps all the interrupt vectors to their corresponding
    implementations. If a particular module interrupt is used, then its ISR
    definition can be found in corresponding PLIB source file. If a module
    interrupt is not used, then its ISR implementation is mapped to dummy
    handler.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2018 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *******************************************************************************/
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "configuration.h"
#include "definitions.h"

// *****************************************************************************
// *****************************************************************************
// Section: System Interrupt Vector Functions
// *****************************************************************************
// *****************************************************************************


void CORE_TIMER_InterruptHandler( void );
void TIMER_1_InterruptHandler( void );
void INPUT_CAPTURE_1_InterruptHandler( void );
void TIMER_2_InterruptHandler( void );
void INPUT_CAPTURE_2_InterruptHandler( void );
void INPUT_CAPTURE_3_InterruptHandler( void );
void TIMER_4_InterruptHandler( void );
void INPUT_CAPTURE_4_InterruptHandler( void );
void I2C_4_InterruptHandler( void );
void I2C_5_InterruptHandler( void );
void UART_6_InterruptHandler( void );



/* All the handlers are defined here.  Each will call its PLIB-specific function. */
void __ISR(_CORE_TIMER_VECTOR, ipl1AUTO) CORE_TIMER_Handler (void)
{
    CORE_TIMER_InterruptHandler();
}

void __ISR(_TIMER_1_VECTOR, ipl1AUTO) TIMER_1_Handler (void)
{
    TIMER_1_InterruptHandler();
}

void __ISR(_INPUT_CAPTURE_1_VECTOR, ipl1AUTO) INPUT_CAPTURE_1_Handler (void)
{
    INPUT_CAPTURE_1_InterruptHandler();
}

void __ISR(_TIMER_2_VECTOR, ipl1AUTO) TIMER_2_Handler (void)
{
    TIMER_2_InterruptHandler();
}

void __ISR(_INPUT_CAPTURE_2_VECTOR, ipl1AUTO) INPUT_CAPTURE_2_Handler (void)
{
    INPUT_CAPTURE_2_InterruptHandler();
}

void __ISR(_INPUT_CAPTURE_3_VECTOR, ipl1AUTO) INPUT_CAPTURE_3_Handler (void)
{
    INPUT_CAPTURE_3_InterruptHandler();
}

void __ISR(_TIMER_4_VECTOR, ipl1AUTO) TIMER_4_Handler (void)
{
    TIMER_4_InterruptHandler();
}

void __ISR(_INPUT_CAPTURE_4_VECTOR, ipl1AUTO) INPUT_CAPTURE_4_Handler (void)
{
    INPUT_CAPTURE_4_InterruptHandler();
}

void __ISR(_I2C_4_VECTOR, ipl1AUTO) I2C_4_Handler (void)
{
    I2C_4_InterruptHandler();
}

void __ISR(_I2C_5_VECTOR, ipl1AUTO) I2C_5_Handler (void)
{
    I2C_5_InterruptHandler();
}

void __ISR(_UART_6_VECTOR, ipl1AUTO) UART_6_Handler (void)
{
    UART_6_InterruptHandler();
}




/*******************************************************************************
 End of File
*/
