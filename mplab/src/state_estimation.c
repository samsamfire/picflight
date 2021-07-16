/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.c

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */

#include "state_estimation.h"


/* ************************************************************************** */
/* ************************************************************************** */
/* Section: File Scope or Global Data                                         */
/* ************************************************************************** */
/* ************************************************************************** */

/*  A brief description of a section can be given directly below the section
    banner.
 */

/* ************************************************************************** */
/** Descriptive Data Item Name

  @Summary
    Brief one-line summary of the data item.
    
  @Description
    Full description, explaining the purpose and usage of data item.
    <p>
    Additional description in consecutive paragraphs separated by HTML 
    paragraph breaks, as necessary.
    <p>
    Type "JavaDoc" in the "How Do I?" IDE toolbar for more information on tags.
    
  @Remarks
    Any additional remarks
 */

void PID_Compute(PID* pid)
{
    float input = *(pid->input);
    float error = *(pid->setpoint)-input;
    float derror = error - pid->last_error;
    
    //Anti windup should be done here
    pid->iterm +=(float) pid->params.ki * error;
    
    pid->output = pid->params.kp * error + pid->iterm + pid->params.kd * derror;
    
    //Also saturation can be implemented here

}

void PID_3DOF_Compute(PID_3DOF* pid)
{
    PID_Compute(&pid->pitch);
    PID_Compute(&pid->roll);
    PID_Compute(&pid->yaw);
}

void PID_Init(PID* pid, float kp, float kd, float ki, float* input,float* setpoint)
{
    pid->params.kp = kp;
    pid->params.kd = kd;
    pid->params.ki = ki;
    
    pid->input = input;
    pid->output = 0;
    pid->setpoint = setpoint;
    pid->iterm = 0;
    pid->current_time =0;
    pid->last_error = 0;
}
/* *****************************************************************************
 End of File
 */
