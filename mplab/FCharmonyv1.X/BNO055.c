
#include "BNO055.h"

SYS_TIME_HANDLE timer = SYS_TIME_HANDLE_INVALID;

uint8_t buff[6];

void Bno055_init(
    DRV_HANDLE i2cHandle,
    DRV_I2C_TRANSFER_HANDLE* const transferHandle
)

{
    WriteByte(i2cHandle,BNO055_ADDRESS,OPR_MODE,0x00,transferHandle);
    Delay_ms(200,timer);
    WriteByte(i2cHandle,BNO055_ADDRESS,SYS_TRIGGER,0x20,transferHandle);
    Delay_ms(600,timer);
    WriteByte(i2cHandle,BNO055_ADDRESS,UNIT_SEL,0x00,transferHandle);
    Delay_ms(200,timer);
    WriteByte(i2cHandle,BNO055_ADDRESS,PWR_MODE,0x00,transferHandle);
    Delay_ms(200,timer);
    WriteByte(i2cHandle,BNO055_ADDRESS,SYS_TRIGGER,0x00,transferHandle);
    Delay_ms(200,timer);
    WriteByte(i2cHandle,BNO055_ADDRESS,OPR_MODE,0x0C,transferHandle);
    Delay_ms(200,timer);
     }

void getEulerAngles(
    ATTITUDE* eulerAngles,
    DRV_HANDLE i2cHandle,
    DRV_I2C_TRANSFER_HANDLE* const transferHandle
)
{
     int16_t heading=0, roll=0, pitch=0;
     ReadMultipleBytes(i2cHandle,BNO055_ADDRESS,0x1A,&buff[0],6,transferHandle);
     //Should use a callback function, this is unnecessary waiting
     Delay_ms(3,timer);
     //while(DRV_I2C_TransferStatusGet(i2cHandle)==0);
     heading= (int16_t) (buff[0]+(int16_t)256*buff[1]);   //Heading = Z axis
     eulerAngles->yaw= (float) heading/16;
     roll=(int16_t)(buff[2]+(int16_t)256*buff[3]);      //Roll = Y axis
     eulerAngles->roll= (float) roll/16;
     pitch=(int16_t)(buff[4]+(int16_t)256*buff[5]);     //Pitch = X axis
     eulerAngles->pitch= (float) pitch/16;
     

}

void getAngularVelocities(
    float * angularVelocities,
    DRV_HANDLE i2cHandle,
    DRV_I2C_TRANSFER_HANDLE* const transferHandle
)
{
     int gyrox=0,gyroy=0,gyroz=0;
     ReadMultipleBytes(i2cHandle,BNO055_ADDRESS,0x14,&buff[0],6,transferHandle);
     gyrox=(int)buff[0]+256*(int)buff[1];      //Pitch
     angularVelocities[2]=(float)gyrox/16;
     gyroy=(int)buff[2]+256*(int)buff[3];      //Roll
     angularVelocities[1]=(float)gyroy/16;
     gyroz=(int)buff[4]+256*(int)buff[5];      //Heading
     angularVelocities[0]=(float)gyroz/16;   
     
     }