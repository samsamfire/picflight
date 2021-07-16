
#include "i2c_personal.h"
#include "driver/i2c/drv_i2c.h"
#include "state_estimation.h"


#define MPU_6050_ADDRESS        0x68
#define MPU_6050_ACCEL_XOUT_H   0x3B
#define PWR_MGMT_1              0x6B
#define CONFIG                  0x1A
#define GYRO_CONFIG             0x1B
#define ACCEL_CONFIG            0x1C
#define ACCEL_CONFIG_2          0x1C

//Get accelerometer and gyro values from mpu6050
void MPU6050_getAccelGyro(
    ACCEL_GYRO_RAW* accelGyro,
    DRV_HANDLE i2cHandle,
    DRV_I2C_TRANSFER_HANDLE* const transferHandle      
); 

//Initialize mpu 6050 (no sleep, filter,etc)
void MPU6050_init(
    DRV_HANDLE i2cHandle,
    DRV_I2C_TRANSFER_HANDLE* const transferHandle
);


void MPU6050_getOffsets(float *accelAndGyroOffsets_mpu6500);         //Calculate offset values of accel and gyro
void getCompensatedAngleAndGyro(float *accelAndGyroOffsets, float *compensatedAngleAndGyro_mpu6500, float dt);    //calculate yaw pitch roll with complementary filter
 
//(-)compensatedAngleAndGyro[1] is euleurAngles[2] & (-) compensatedAngleAndGyro[0] is eulerAngles[1]        for angles
//(-)compensatedAngleAndGyro[3] is angularVelocities[2] & (-)compensatedAngleAndGyro[3] is angularVelocities[1] & compensatedAngleAndGyro[5] is angularVelocities[0]         for angular velocities