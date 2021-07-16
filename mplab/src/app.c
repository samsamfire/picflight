/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It
    implements the logic of the application's state machine and it may call
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "app.h"






// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

APP_DATA appData;



// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback functions.
*/

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************
char uartTxBuffer[32];
uint8_t r[] = "\n\r";

/* TODO:  Add any necessary local functions.
*/




void print_uart(
    double to_print, 
    DRV_HANDLE handle,
    DRV_USART_BUFFER_HANDLE* bufferHandle
)
{
    sprintf(&uartTxBuffer[0],"%f", to_print);
    DRV_USART_WriteBufferAdd(handle, &uartTxBuffer[0],sizeof(uartTxBuffer),bufferHandle); 
    DRV_USART_WriteBufferAdd(handle, &r[0],sizeof(r),bufferHandle); 
    
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Remarks:
    See prototype in app.h.
 */

uint8_t consoleMsg[] = "Hello World\n\r";
uint8_t error1[] = "I2C error";
uint8_t consoleMsg2[] = "Sending\n\r";
uint8_t msg[2] = {OPR_MODE,0x00};

float eulerAngles[3];




uint32_t counter = 0, counter1=0 ;
UART_ERROR uart_errors;
volatile uint16_t isdataready;

char uart_buffer[32];


DRV_I2C_ERROR i2cerror;
DRV_I2C_TRANSFER_EVENT i2cevent;

ATTITUDE attitude_sensor;
ATTITUDE attitude_desired;

ACCEL_GYRO_RAW accelGyro;

uint8_t buffi2c[14];
uint8_t buffi2ctx[1];


PID_3DOF pid_inner, pid_outer;
SENSOR sensor_list[NUM_I2C_SENSORS];
uint8_t counter_outer=0;


SYS_TIME_HANDLE delay_timer = SYS_TIME_HANDLE_INVALID;

MOTOR_INPUT motor_inputs;

SENSOR bno055,mpu6050,at24c64;
SENSOR *sensors[2];


MOTOR ** motors;// = malloc(NUM_MOTORS*sizeof(MOTOR*));
//MOTOR motor_array[4];
int i;
CONTROLLER_ATTITUDE controller_raw;
TRANSMITTER transmitter;


void APP_Initialize ( void )
{
    
    //Registering refresh rates
    
        //Give a SYS_TIME_CALLBACK function "MyCallback",
    SYS_TIME_HANDLE handle = SYS_TIME_CallbackRegisterMS(&Transmitter_Callback, (uintptr_t) &transmitter, 1000/TRANSMITTER_UPDATE_FREQ, SYS_TIME_PERIODIC);
    if (handle != SYS_TIME_HANDLE_INVALID)
    {
          //timer is created successfully.
    }
    
    sensors[0] = &mpu6050;
    sensors[1] = &bno055;
    
    motors = malloc(NUM_MOTORS*sizeof(MOTOR*));
    for(i=0; i<NUM_MOTORS; i++)
    {
        motors[i] = malloc(sizeof(MOTOR));
    }
    
    transmitter.attitude_raw = &controller_raw;
   
    /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_INIT;
    //Start the drivers handling I2C (for sensors & eeprom) and UART for debugging and bluetooth
    appData.i2cHandle = DRV_I2C_Open(DRV_I2C_INDEX_0,DRV_IO_INTENT_READWRITE|DRV_IO_INTENT_NONBLOCKING);
    DRV_I2C_TransferEventHandlerSet(appData.i2cHandle,APP_I2C_Callback,(uintptr_t)&sensors[0]);
    appData.i2c4Handle = DRV_AT24_Open(DRV_AT24_INDEX,DRV_IO_INTENT_READWRITE|DRV_IO_INTENT_NONBLOCKING);
    appData.uartHandle = DRV_USART_Open(DRV_USART_INDEX_0,DRV_IO_INTENT_READWRITE|DRV_IO_INTENT_NONBLOCKING);
    
    
    //10000 = 1ms
    controller_raw.pitch = 20000;
    controller_raw.roll = 20000;
    controller_raw.yaw = 20000;
    controller_raw.throttle = 20000;
    transmitter.timeout = 0;
    
    appData.bluetoothActive = 1;
    appData.i2cReadTransferReady = 1;
    appData.updateMotors = 0;
    
    
    

}


/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Tasks ( void )
{
 
    /* Check the application's current state. */
    switch ( appData.state )
    {
        /* Application's initial state. */
        case APP_STATE_INIT:
        {
            
    
            //This timer is used for updating sensor values, an interrupt is generated every 2.5ms
            TMR2_CallbackRegister((TMR_CALLBACK) Update_Timer2,(uintptr_t)&isdataready);
            TMR2_Start();
            //This timer is used by the input capture module to measure pulse width
            TMR3_Start();
            //Start input capture modules, interrupt is generated at each capture event
            //TMR3 is used to calculate pulse length of remote controller input
            //The callback function for input capture should be set before enabling the module 
            //This is because if an interrupt occurs the program will stay in the interrupt vector unless the corresponding buffer is read
            ICAP1_CallbackRegister((ICAP_CALLBACK) Update_ICAP1,(uintptr_t)&transmitter);
            ICAP1_Enable();
            ICAP2_CallbackRegister((ICAP_CALLBACK) Update_ICAP2,(uintptr_t)&transmitter);
            ICAP2_Enable();
            ICAP3_CallbackRegister((ICAP_CALLBACK) Update_ICAP3,(uintptr_t)&transmitter);
            ICAP3_Enable();
            ICAP4_CallbackRegister((ICAP_CALLBACK) Update_ICAP4,(uintptr_t)&transmitter);
            ICAP4_Enable();
            
            
            //Enable output compare modules. By default the pulse width is 1ms and stays like that for at least 5 seconds
            //This is used for the 4 motors control
            //Delay_ms(2,delay_timer);
            OCMP1_Enable();
            OCMP2_Enable();
            OCMP3_Enable();
            OCMP4_Enable();
            
            //Initialize all 3 inner pids
            PID_Init(&pid_inner.pitch,8,0,0,&attitude_sensor.pitch,&transmitter.attitude_desired.pitch);
            PID_Init(&pid_inner.roll,8,0,0,&attitude_sensor.roll,&transmitter.attitude_desired.roll);
            PID_Init(&pid_inner.yaw,0,0,0,&attitude_sensor.yaw,&transmitter.attitude_desired.yaw);
            //Initialize all 3 outer pids
            PID_Init(&pid_outer.pitch,30,0,0,&attitude_sensor.dpitch,&pid_inner.pitch.output);
            PID_Init(&pid_outer.roll,30,0,0,&attitude_sensor.droll,&pid_inner.roll.output);
            PID_Init(&pid_outer.yaw,0,0,0,&attitude_sensor.dyaw,&pid_inner.yaw.output);
            
            //Initialize motors (minimum speed)
            Motors_Init(motors,MIN_MOTOR_SPEED,MAX_MOTOR_SPEED);
            
            //Go to next state once everything is initialized correctly
            appData.state = APP_STATE_SENSOR_INIT;
            
           
            break;      
        }

        case APP_STATE_SENSOR_INIT:
        {
            
            
            //Initialize mpu6050 & bno055
            Delay_ms(100,delay_timer);
            if(appData.i2cHandle != DRV_HANDLE_INVALID){
                MPU6050_init(appData.i2cHandle,&appData.transferI2cHandle);
                Delay_ms(10,delay_timer);
                Bno055_init(appData.i2cHandle,&appData.transferI2cHandle);
            }
            Delay_ms(4000,delay_timer);
            appData.state = APP_STATE_CALIBRATION;
            break;
        }
        
        case APP_STATE_CALIBRATION:
        {
            at24c64.i2cBufferTx[0] = 0xA4;
            //DRV_AT24_Write(appData.i2c4Handle,&at24c64.i2cBufferTx[0],1,0);
            DRV_AT24_Read(appData.i2c4Handle,&at24c64.i2cBufferRx[0],1,0);
            appData.state = APP_STATE_READ_SENSORS;
            
            
            break;
        }
           
        case APP_STATE_READ_SENSORS:
        {
            
            mpu6050.i2cBufferTx[0] = MPU_6050_ACCEL_XOUT_H;
            bno055.i2cBufferTx[0] = 0x1A;
            
            
            if(isdataready==1){
                appData.updateMotors = 1;
                isdataready=0;
                mpu6050.sensorSelected = 1;
                
                DRV_I2C_WriteReadTransferAdd(appData.i2cHandle,MPU_6050_ADDRESS,&mpu6050.i2cBufferTx[0],1,&mpu6050.i2cBufferRx[0],14,&appData.transferI2cHandle);
                if(counter_outer == 4){
                    bno055.sensorSelected = 1;
                    
                    DRV_I2C_WriteReadTransferAdd(appData.i2cHandle,BNO055_ADDRESS,&bno055.i2cBufferTx[0],1,&bno055.i2cBufferRx[0],14,&appData.transferI2cHandle);
                    counter_outer = 0;
                }
                counter_outer +=1;
                
            }
            
            appData.state = APP_STATE_PROCESS_SENSORS;
            break;
        }
        case APP_STATE_PROCESS_SENSORS:
        {
            ;
            //Once i2c read is finished we need to process sensors.
            if(bno055.dataReady == 1){
                bno055.dataReady = 0;
                //Get bno055 sensor data, values are already in degrees
                attitude_sensor.yaw = (float) ((bno055.i2cBufferRx[0] + (int16_t)(bno055.i2cBufferRx[1] << 8))>>4); 
                attitude_sensor.roll = (float) -((bno055.i2cBufferRx[2] + (int16_t)(bno055.i2cBufferRx[3] << 8))>>4); 
                attitude_sensor.pitch = (float) -((bno055.i2cBufferRx[4] + (int16_t)(bno055.i2cBufferRx[5] << 8))>>4); 
                
            }
            
            if(mpu6050.dataReady == 1)
            {
                //Get mpu6050 sensor data
                mpu6050.dataReady = 0;
                accelGyro.accel.accelx = (((int16_t)mpu6050.i2cBufferRx[0]) << 8) | mpu6050.i2cBufferRx[1];
                accelGyro.accel.accely = (((int16_t)mpu6050.i2cBufferRx[2]) << 8) | mpu6050.i2cBufferRx[3];
                accelGyro.accel.accelz = (((int16_t)mpu6050.i2cBufferRx[4]) << 8) | mpu6050.i2cBufferRx[5];
                accelGyro.gyro.gyrox = (((int16_t)mpu6050.i2cBufferRx[8]) << 8) | mpu6050.i2cBufferRx[9];
                accelGyro.gyro.gyroy = (((int16_t)mpu6050.i2cBufferRx[10]) << 8) | mpu6050.i2cBufferRx[11];
                accelGyro.gyro.gyroz = (((int16_t)mpu6050.i2cBufferRx[12]) << 8) | mpu6050.i2cBufferRx[13];
                
                attitude_sensor.dpitch = (float) accelGyro.gyro.gyrox/65.5;
                attitude_sensor.droll = (float) -accelGyro.gyro.gyroy/65.5;
                attitude_sensor.dyaw = (float) -accelGyro.gyro.gyroz/65.5;
            }
            
            
            if(transmitter.dataReady == 1)
            {
                transmitter.dataReady = 0;
                Transmitter_Update(&transmitter);
            }
                
  
            appData.state = APP_STATE_STATE_ESTIMATION;
            break;
        }
        
        case APP_STATE_STATE_ESTIMATION:
        {
            //Calculate PIDs and everything here
            
            
            appData.state = APP_STATE_MOTOR_UPDATE;
       
            //This computes the pids of the outer and inner loops
            PID_3DOF_Compute(&pid_inner);
            PID_3DOF_Compute(&pid_outer);
            
            break;
        }
        
        case APP_STATE_MOTOR_UPDATE:
        {
            //Update motors
            GPIO_PinWrite(GPIO_PIN_RE0,transmitter.timeout);
            
            if(appData.updateMotors == 1)
            {
                appData.updateMotors = 0;
                motor_inputs.speeds[0]=(uint16_t)(10000.0 +(float) transmitter.attitude_desired.throttle +(float) pid_outer.pitch.output +(float) pid_outer.roll.output +(float) pid_outer.yaw.output);
                motor_inputs.speeds[1]=(uint16_t)(10000.0 +(float) transmitter.attitude_desired.throttle -(float) pid_outer.pitch.output +(float) pid_outer.roll.output -(float) pid_outer.yaw.output);
                motor_inputs.speeds[2]=(uint16_t)( 10000.0 +(float) transmitter.attitude_desired.throttle -(float) pid_outer.pitch.output -(float) pid_outer.roll.output +(float) pid_outer.yaw.output);
                motor_inputs.speeds[3]=(uint16_t)( 10000.0 +(float) transmitter.attitude_desired.throttle +(float) pid_outer.pitch.output -(float) pid_outer.roll.output -(float) pid_outer.yaw.output);
                Motors_SetSpeed(motors,&motor_inputs);
                
            }
            
            if(appData.bluetoothActive == 1)
            {
                appData.state = APP_STATE_BLUETOOTH_COM;
            }
            else{
                appData.state = APP_STATE_READ_SENSORS;
            }
            break;
            
        }
            
        
        case APP_STATE_BLUETOOTH_COM:
        {

            if (counter >= 10000){
                print_uart((double)at24c64.i2cBufferRx[0],appData.uartHandle,&appData.bufferUartHandle);
                Delay_ms(1,delay_timer);
               
               
                    GPIO_PinToggle(GPIO_PIN_RE4);
                    counter = 0;
                
            }
            counter += 1;
            //Delay_ms(100,delay_timer);
            appData.state = APP_STATE_READ_SENSORS;
            
            break;
        }

        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}


/*******************************************************************************
 End of File
 */
