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
#include <stdint.h>

#ifndef _STATE_ESTIMATION_H    /* Guard against multiple inclusion */
#define _STATE_ESTIMATION_H

#define PID_OUTPUT float
typedef struct
{
    float pitch;
    float roll;
    float yaw;
    float throttle;
    
    float dpitch;
    float droll;
    float dyaw;
    
}ATTITUDE;

typedef struct
{
    int16_t accelx;
    int16_t accely;
    int16_t accelz;
}ACCEL_RAW;

typedef struct
{
    int16_t gyrox;
    int16_t gyroy;
    int16_t gyroz;
}GYRO_RAW;

typedef struct
{
    int16_t magx;
    int16_t magy;
    int16_t magz;
}MAG_RAW;

typedef struct
{
    ACCEL_RAW accel;
    GYRO_RAW gyro;
    
}ACCEL_GYRO_RAW;

typedef struct
{
    float kp;
    float kd;
    float ki;
    
}PID_PARAMS;



typedef struct
{
    PID_PARAMS params;
    float current_time;
    
    float* input;
    float output;
    float* setpoint;      
    float iterm;
    float last_error;
    
}PID;



typedef struct
{
    PID pitch;
    PID roll;
    PID yaw;
}PID_3DOF;



//Initialize PID controller
void PID_Init(PID* pid, float Kp, float Kd, float Ki, float* input, float* setpoint);

//Update PID
void PID_Compute(PID* pid);

//This is the 3DOF version of PID_Compute (to compute pitch, roll & yaw at once)

void PID_3DOF_Compute(PID_3DOF* pid);



#endif /* _EXAMPLE_FILE_NAME_H */

/* *****************************************************************************
 End of File
 */

