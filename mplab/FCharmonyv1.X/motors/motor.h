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
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <stdio.h>
#include "configuration.h"
#include "../PIC32MX795F512H_DFP/device.h"
#ifndef _MOTOR_H    /* Guard against multiple inclusion */
#define _MOTOR_H

#define MAX_MOTOR_SPEED 19000
#define MIN_MOTOR_SPEED 10000
#define NUM_MOTORS 4

typedef struct
{
    volatile uint16_t *speed;
    uint16_t prev_speed;
    uint16_t min_speed;
    uint16_t max_speed;
    
}MOTOR;

typedef struct
{
    uint16_t speeds[4];
}MOTOR_INPUT;


void Motors_Init(MOTOR* motors[], uint16_t min_speed, uint16_t max_speed);

void Motors_SetSpeed(MOTOR* motors[],MOTOR_INPUT* inputs);

//void Motor_SetSpeed(MOTOR* motor, const uint16_t newSpeed);


#endif


