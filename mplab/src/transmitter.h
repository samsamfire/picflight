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
#include "state_estimation.h"

#ifndef _TRANSMITTER_H    /* Guard against multiple inclusion */
#define _TRANSMITTER_H

#define MAX_ANGLE_PITCH 20
#define MAX_ANGLE_ROLL 20
#define MAX_SPEED_YAW 10
#define MAX_THROTTLE 80 //In percentage
#define NUM_I2C_SENSORS 20
#define TRANSMITTER_UPDATE_FREQ 50 //In hertz

typedef struct
{
    uint16_t pitch;
    uint16_t roll;
    uint16_t yaw;
    uint16_t throttle;
}CONTROLLER_ATTITUDE;

typedef struct
{
    volatile CONTROLLER_ATTITUDE *attitude_raw;
    ATTITUDE attitude_desired;
    uint16_t prevNbReads;
    uint16_t nbReads;
    uint8_t timeout;
    uint8_t active;
    uint8_t dataReady;
    
}TRANSMITTER;

//Calculates the requested attitude from the raw values of the transmitter
void Transmitter_Update(TRANSMITTER* transmitter);

//This updates the transmitter ready status. This is called at a frequency of TRANSMITTER_UPDATE_FREQ
void Transmitter_Callback(uintptr_t data);
#endif


