#include "motor.h"


//void Motors_Init(MOTOR_OUTPUT* motor_outputs)
//{
//    motor_outputs->motor1 = 10000;
//    motor_outputs->motor2 = 10000;
//    motor_outputs->motor3 = 10000;
//    motor_outputs->motor4 = 10000;
//    //These are the compare registers used by the output compare module
//    OC1RS = 10000;
//    OC2RS = 10000;
//    OC3RS = 10000;
//    OC4RS = 10000;
//}

void Motors_Init(MOTOR* motors[], uint16_t min_speed, uint16_t max_speed)
{
    int i;
    OC1RS = 10000;
    OC2RS = 10000;
    OC3RS = 10000;
    OC4RS = 10000;
    
    motors[0]->speed = (uint16_t*)&OC1RS;
    motors[1]->speed = (uint16_t*)&OC2RS;
    motors[2]->speed = (uint16_t*)&OC3RS;
    motors[3]->speed = (uint16_t*)&OC4RS;
    
    for(i=0;i<NUM_MOTORS;i++)
    {
        motors[i]->min_speed = min_speed;
        motors[i]->max_speed = max_speed;
    }
    
    
}

void Motors_SetSpeed(MOTOR* motors[],MOTOR_INPUT* inputs)
{
    int i;
    //Update previous speeds of each motor
    for(i=0; i<4; i++)
    {
        motors[i]->prev_speed = *(motors[i]->speed);
    }
    //Update motor speeds accordingly, and saturate value
    for (i=0; i<4; i++)
    {
        if(inputs->speeds[i]>motors[i]->max_speed)
        {
            *(motors[i]->speed) = motors[i]->max_speed;
        }
        else if(inputs->speeds[i]<motors[i]->min_speed)
        {
            *(motors[i]->speed) = motors[i]->min_speed;
        }
        else
            *(motors[i]->speed) = inputs->speeds[i];
    }
//    OC1RS = inputs->speeds[0];
//    OC2RS = inputs->speeds[1];
//    OC3RS = inputs->speeds[2];
//    OC4RS = inputs->speeds[3];
    
    
}


//
//void Motors_Limit(MOTOR_OUTPUT *motor_outputs, uint16_t upper_limit, uint16_t lower_limit)
//{
//    if(motor_outputs->motor1 > upper_limit)
//    {
//        motor_outputs->motor1 = upper_limit;
//    }
//    else if(motor_outputs->motor1 < lower_limit)
//    {
//        motor_outputs->motor1 = lower_limit;
//    }
//    
//    if(motor_outputs->motor2 > upper_limit)
//    {
//        motor_outputs->motor2 = upper_limit;
//    }
//    else if(motor_outputs->motor2 < lower_limit)
//    {
//        motor_outputs->motor2 = lower_limit;
//    }
//    if(motor_outputs->motor3 > upper_limit)
//    {
//        motor_outputs->motor3 = upper_limit;
//    }
//    else if(motor_outputs->motor3 < lower_limit)
//    {
//        motor_outputs->motor3 = lower_limit;
//    }
//    if(motor_outputs->motor4 > upper_limit)
//    {
//        motor_outputs->motor4 = upper_limit;
//    }
//    else if(motor_outputs->motor4 < lower_limit)
//    {
//        motor_outputs->motor4 = lower_limit;
//    }
//}


//void Motor_SetSpeed(MOTOR* motor, const uint16_t newSpeed)
//{
//    motor->prev_speed = *motor->speed;
//    //motor->speed = newSpeed;
//};

