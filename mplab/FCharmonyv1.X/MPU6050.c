
#include "MPU6050.h"

SYS_TIME_HANDLE timer2 = SYS_TIME_HANDLE_INVALID;




void MPU6050_init(
 DRV_HANDLE i2cHandle,
 DRV_I2C_TRANSFER_HANDLE* const transferHandle
)
{
    WriteByte(i2cHandle,MPU_6050_ADDRESS,PWR_MGMT_1,0,transferHandle);
    Delay_ms(100,timer2);
    WriteByte(i2cHandle,MPU_6050_ADDRESS,CONFIG,0b00000110,transferHandle);
    Delay_ms(2,timer2);
    WriteByte(i2cHandle,MPU_6050_ADDRESS,GYRO_CONFIG,0b00001000,transferHandle);
    Delay_ms(2,timer2);
    WriteByte(i2cHandle,MPU_6050_ADDRESS,ACCEL_CONFIG,0b00010000,transferHandle); //4096 = 1G
    Delay_ms(2,timer2);
    WriteByte(i2cHandle,MPU_6050_ADDRESS,ACCEL_CONFIG_2,0b00000010,transferHandle); //4096 = 1G
    Delay_ms(2,timer2);
       
}
     
uint8_t buff[14];

void MPU6050_getAccelGyro(
    ACCEL_GYRO_RAW* accelGyro,
    DRV_HANDLE i2cHandle,
    DRV_I2C_TRANSFER_HANDLE* const transferHandle      
)
{
     
     uint8_t test = MPU_6050_ACCEL_XOUT_H;
     uint8_t accelx=0, accely=0, accelz=0, gyrox=0, gyroy=0, gyroz=0;
     ReadMultipleBytes(i2cHandle,MPU_6050_ADDRESS,test,&buff[0],14,transferHandle);
     Delay_us(10,timer2);
     accelx=buff[1]+256*buff[0];   //accelx
     accelGyro->accel.accelx = accelx;
     accely=buff[3]+256*buff[2];   //accely
     accelGyro->accel.accely = accely;
     accelz=buff[5]+256*buff[4];   //accelz
     accelGyro->accel.accelz = accelz;
     gyrox=buff[9]+256*buff[8];   //gyrox
     accelGyro->gyro.gyrox = gyrox;
     gyroy=buff[11]+256*buff[10];   //gyroy
     accelGyro->gyro.gyroy = gyroy;
     gyroz=buff[13]+256*buff[12];   //gyroz
     accelGyro->gyro.gyroz = gyroz;
     
}



//void getOffsets(float *accelAndGyroOffsets_mpu6500){
//      float accelx_sum=0, accely_sum=0, accelz_sum=0, gyrox_sum=0, gyroy_sum=0, gyroz_sum=0;
//      float accelAndGyro_offset[6];
//      int counter=0;
//      while(counter<500){
//                         getAccelAndGyro_mpu6500(&accelAndGyro_offset[0]);
//
//                         accelx_sum+=accelAndGyro_Offset[0];
//                         accely_sum+=accelAndGyro_Offset[1];
//                         accelz_sum+=accelAndGyro_Offset[2];
//                         gyrox_sum+=accelAndGyro_Offset[3];
//                         gyroy_sum+=accelAndGyro_Offset[4];
//                         gyroz_sum+=accelAndGyro_Offset[5];
//                         counter+=1;
//                         }
//      accelAndGyroOffsets_mpu6500[0]=accelx_sum/500;
//      accelAndGyroOffsets_mpu6500[1]=accely_sum/500;
//      accelAndGyroOffsets_mpu6500[2]=accelz_sum/500;
//      accelAndGyroOffsets_mpu6500[3]=gyrox_sum/500;
//      accelAndGyroOffsets_mpu6500[4]=gyroy_sum/500;
//      accelAndGyroOffsets_mpu6500[5]=gyroz_sum/500;
//
//
//      }
//void getCompensatedAngleAndGyro(float *accelAndGyroOffsets, float *compensatedAngleAndGyro_mpu6500, float dt){
//     float accelx_sum=0, accely_sum=0, accelz_sum=0, gyrox_sum=0, gyroy_sum=0, gyroz_sum=0;
//     float accelAndGyro[6];
//     int counter=0;
//     float accelx=0, accely=0, accelz=0;
//     float anglex_accel=0, angley_accel=0, anglex=0, angley=0, anglez=0, gyrox=0, gyroy=0, gyroz=0;
//     float temp=0;
//     
//     while(counter<4){
//                         getAccelAndGyro_mpu6500(&accelAndGyro[0]);
//
//                         accelx_sum+=accelAndGyro[0];
//                         accely_sum+=accelAndGyro[1];
//                         accelz_sum+=accelAndGyro[2];
//                         gyrox_sum+=accelAndGyro[3];
//                         gyroy_sum+=accelAndGyro[4];
//                         gyroz_sum+=accelAndGyro[5];
//                         counter+=1;
//                         }
//     accelx=accelx_sum/4-accelAndGyroOffsets[0];
//     accely=accely_sum/4-accelAndGyroOffsets[1];
//     accelz=accelz_sum/4;
//     accelAndGyro[3]=gyrox_sum/4;
//     accelAndGyro[4]=gyroy_sum/4;
//     accelAndGyro[5]=gyroz_sum/4;
//     
//     gyrox=(float) (accelAndGyro[3]-accelAndGyroOffsets[3])/65.5;
//     gyroy=(float) (accelAndGyro[4]-accelAndGyroOffsets[4])/65.5;
//     gyroz=(float) (accelAndGyro[5]-accelAndGyroOffsets[5])/65.5;
//     
//     anglex_accel=(float)atan((accelx/sqrt(accely*accely+accelz*accelz)))*(180/3.14);
//     angley_accel=(float)atan((accely/sqrt(accelx*accelx+accelz*accelz)))*(180/3.14);
//     
//     anglex=compensatedAngleAndGyro_mpu6500[0];
//     angley=compensatedAngleAndGyro_mpu6500[1];
//     anglez=compensatedAngleAndGyro_mpu6500[2];
//     
//     anglex=anglex-(float) gyroy*dt;                                                       //Angle calculated using only gyroscope
//     angley=angley+(float) gyrox*dt;
//     anglez=anglez-(float) gyroz*dt;
//     
//     anglex=(float) anglex+angley*sin(gyroz*dt*0.01744);           //Take into account rotation around Z axis
//     angley=(float) angley-anglex*sin(gyroz*dt*0.01744);
//
//     anglex=0.995*anglex+0.005*anglex_accel;                                  //Complementary filter
//     angley=0.995*angley+0.005*angley_accel;
//      
//
//
//     compensatedAngleAndGyro_mpu6500[0]=anglex;
//     compensatedAngleAndGyro_mpu6500[1]=angley;
//     compensatedAngleAndGyro_mpu6500[2]=accelz;
//     compensatedAngleAndGyro_mpu6500[3]=gyrox;
//     compensatedAngleAndGyro_mpu6500[4]=gyroy;
//     compensatedAngleAndGyro_mpu6500[5]=gyroz;
//     
//     
//     }