#include "interrupt_callbacks.h"



void Update_ICAP1(TRANSMITTER* a){
    __attribute__((unused)) uint16_t buffer = 0;
    
    TRANSMITTER* transmitter = a;
    
    buffer = IC1BUF;
    
    
    if (GPIO_PinRead(GPIO_PIN_RD8) == 1){
        TMR3_Stop();
        TMR3=0;
        TMR3_Start();
        buffer = IC1BUF;
        }
     else if(GPIO_PinRead(GPIO_PIN_RD8) == 0){
          transmitter->attitude_raw->pitch = buffer;
       
          }
    transmitter->nbReads += 1; 
    buffer = IC1BUF;
    IFS0CLR = _IFS0_IC1IF_MASK;    //Clear IRQ flag
    
    
}

void Update_ICAP2(TRANSMITTER* a){
    __attribute__((unused)) uint16_t buffer_clear = 0;
    TRANSMITTER* transmitter = a;
    
    if (GPIO_PinRead(GPIO_PIN_RD9) == 1){
        TMR3_Stop();
        TMR3=0;
        TMR3_Start();
        buffer_clear = IC2BUF;
        }
     else if(GPIO_PinRead(GPIO_PIN_RD9) == 0){
          transmitter->attitude_raw->roll = IC2BUF;
       
          }
    transmitter->nbReads += 1;
    buffer_clear = IC2BUF;
    IFS0CLR = _IFS0_IC2IF_MASK;    //Clear IRQ flag
    
}

void Update_ICAP3(TRANSMITTER* a){
    __attribute__((unused)) uint16_t buffer_clear = 0;
    TRANSMITTER* transmitter = a;
    
    if (GPIO_PinRead(GPIO_PIN_RD10) == 1){
        TMR3_Stop();
        TMR3=0;
        TMR3_Start();
        buffer_clear = IC3BUF;
        }
     else if(GPIO_PinRead(GPIO_PIN_RD10) == 0){
          transmitter->attitude_raw->throttle = IC3BUF;
       
          }
    transmitter->nbReads += 1;
    buffer_clear = IC3BUF;
    IFS0CLR = _IFS0_IC3IF_MASK;    //Clear IRQ flag
    
}

void Update_ICAP4(TRANSMITTER* a){
    __attribute__((unused)) uint16_t buffer_clear = 0;
    TRANSMITTER* transmitter = a;
    
    if (GPIO_PinRead(GPIO_PIN_RD11) == 1){
        TMR3_Stop();
        TMR3=0;
        TMR3_Start();
        buffer_clear = IC4BUF;
        }
     else if(GPIO_PinRead(GPIO_PIN_RD11) == 0){
          transmitter->attitude_raw->yaw = IC4BUF;
       
          }
    transmitter->nbReads += 1;
    buffer_clear = IC4BUF;
    IFS0CLR = _IFS0_IC4IF_MASK;    //Clear IRQ flag
    
}


void UartErrorGet(UART_ERROR* errors)
{
    GPIO_PinToggle(GPIO_PIN_RE0);
    *errors = UART6_ErrorGet();
}

void Update_Timer2(uint32_t status, uint16_t* state)
{
    *state = 1;
    
    
}

SENSOR* sensors;

void APP_I2C_Callback
(
    DRV_I2C_TRANSFER_EVENT event, 
    DRV_I2C_TRANSFER_HANDLE handle, 
    uintptr_t context
)
{
    SENSOR** bno055;
    SENSOR** mpu6050;
    SENSOR* sensors[2];
    
    
    bno055 = (SENSOR**)context;
    mpu6050 = (SENSOR**)context;
    
    
    sensors[0] = *mpu6050;
    sensors[1] = *(bno055+1);
    
    switch(event)
    {
        case DRV_I2C_TRANSFER_EVENT_COMPLETE:
            
            
            if(sensors[0]->sensorSelected == 1)
            {
                
                sensors[0]->dataReady = 1;
                sensors[0]->sensorSelected = 0;
            }
            
            
            if((sensors[1]->sensorSelected) == 1)
            {
                
                sensors[1]->dataReady = 1;
                sensors[1]->sensorSelected = 0;
            }
            break;

        case DRV_I2C_TRANSFER_EVENT_ERROR:
            //*i2cevent = DRV_I2C_ErrorGet(handle);
            break;

        default:
            break;
    }
}
