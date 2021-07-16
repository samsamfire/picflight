
#include "driver/i2c/drv_i2c.h"
#include "i2c_personal.h"
#include "state_estimation.h"




#define OPR_MODE 0x3D
#define UNIT_SEL 0x3B
#define BNO055_ADDRESS 0x28
#define PWR_MODE 0x3E
#define SYS_TRIGGER 0x3F


//Initialize Bno055 euler angles output mode (9 axis)
void Bno055_init(
    DRV_HANDLE i2cHandle,
    DRV_I2C_TRANSFER_HANDLE* const transferHandle
);     

// Get euler angles, eulerAngles=[yaw (Z), Roll (Y), Pitch (X)]
void getEulerAngles(
    ATTITUDE* eulerAngles,
    DRV_HANDLE i2cHandle,
    DRV_I2C_TRANSFER_HANDLE* const transferHandle
);       

//Get angular velocities angularVelocities=[yaw (Z), Roll (Y), Pitch (X)] /dt
void getAngularVelocities(
    float * angularVelocities,
    DRV_HANDLE i2cHandle,
    DRV_I2C_TRANSFER_HANDLE* const transferHandle
);   