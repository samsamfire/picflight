/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.h

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

#ifndef _INTERRUPT_CALLBACKS_H    /* Guard against multiple inclusion */
#define _INTERRUPT_CALLBACKS_H

#include "peripheral/icap/plib_icap1.h"
#include "peripheral/icap/plib_icap2.h"
#include "peripheral/icap/plib_icap3.h"
#include "peripheral/icap/plib_icap4.h"
#include "peripheral/gpio/plib_gpio.h"
#include "peripheral/tmr/plib_tmr3.h"
#include "peripheral/uart/plib_uart6.h"
#include "peripheral/gpio/plib_gpio.h"
#include "app.h"
#include "transmitter.h"




void Update_ICAP1(TRANSMITTER* transmitter);
void Update_ICAP2(TRANSMITTER* transmitter);
void Update_ICAP3(TRANSMITTER* transmitter);
void Update_ICAP4(TRANSMITTER* transmitter);
void UartErrorGet(UART_ERROR* errors);
void Update_Timer2(uint32_t status, uint16_t* state);
void APP_I2C_Callback
(
    DRV_I2C_TRANSFER_EVENT event, 
    DRV_I2C_TRANSFER_HANDLE handle, 
    uintptr_t context
);







#endif /* _EXAMPLE_FILE_NAME_H */

/* *****************************************************************************
 End of File
 */
