#include "transmitter.h"
#include "config/default/peripheral/gpio/plib_gpio.h"


void Transmitter_Update(TRANSMITTER* transmitter)
{
    //This converts the transmitter values to angles. MAX_ANGLE is defined in order to limit the tilt angle of the drone
    //Max throttle is also defined to limit the maximum throttle for the drone
    
    transmitter->attitude_desired.pitch = (float)((transmitter->attitude_raw->pitch-15000)*((float)MAX_ANGLE_PITCH/5000));
    transmitter->attitude_desired.roll = (float)((transmitter->attitude_raw->roll-15000)*((float)MAX_ANGLE_PITCH/5000));
    transmitter->attitude_desired.yaw = (float)((transmitter->attitude_raw->yaw-15000)*((float)MAX_ANGLE_PITCH/5000));
    transmitter->attitude_desired.throttle = (float)((transmitter->attitude_raw->throttle-15000)*((float)MAX_ANGLE_PITCH/5000));
}

void Transmitter_Callback(uintptr_t data)
{
    TRANSMITTER* transmitter =(TRANSMITTER*) data;
    //Transmitter is ready to be computed in main app
    transmitter->dataReady = 1;
    
    //Check if inpulses have been received since last call
    //If there are no new reads that means no impulses from transmitter were received
    if(transmitter->nbReads == transmitter->prevNbReads)
    {
        
        transmitter->timeout = 1;
    }
    else
    {
        transmitter->timeout = 0;
    }
    transmitter->prevNbReads = transmitter->nbReads;
}