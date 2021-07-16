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

/* TODO:  Include other files here if needed. */

#include "i2c_personal.h"


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
int global_data;


/* ************************************************************************** */
/* ************************************************************************** */
// Section: Local Functions                                                   */
/* ************************************************************************** */
/* ************************************************************************** */

/*  A brief description of a section can be given directly below the section
    banner.
 */

/* ************************************************************************** */

/** 
  @Function
    int ExampleLocalFunctionName ( int param1, int param2 ) 

  @Summary
    Brief one-line description of the function.

  @Description
    Full description, explaining the purpose and usage of the function.
    <p>
    Additional description in consecutive paragraphs separated by HTML 
    paragraph breaks, as necessary.
    <p>
    Type "JavaDoc" in the "How Do I?" IDE toolbar for more information on tags.

  @Precondition
    List and describe any required preconditions. If there are no preconditions,
    enter "None."

  @Parameters
    @param param1 Describe the first parameter to the function.
    
    @param param2 Describe the second parameter to the function.

  @Returns
    List (if feasible) and describe the return values of the function.
    <ul>
      <li>1   Indicates an error occurred
      <li>0   Indicates an error did not occur
    </ul>

  @Remarks
    Describe any special behavior not described above.
    <p>
    Any additional remarks.

  @Example
    @code
    if(ExampleFunctionName(1, 2) == 0)
    {
        return 3;
    }
 */



/* ************************************************************************** */
/* ************************************************************************** */
// Section: Interface Functions                                               */
/* ************************************************************************** */
/* ************************************************************************** */

//Added clock stretching in initialization (I2C5CONCLR = _I2C5CON_SCLREL_MASK);

void WriteByte(
    DRV_HANDLE i2cHandle, 
    const uint16_t address,
    uint8_t reg_address,
    uint8_t value,  
    DRV_I2C_TRANSFER_HANDLE* const transferHandle
)
{
    uint8_t to_write[2] = {reg_address,value};
    
    DRV_I2C_WriteTransferAdd(i2cHandle,address,&to_write[0],2,transferHandle);
    
    
}
void ReadMultipleBytes(
    DRV_HANDLE i2cHandle, 
    const uint16_t address,
    uint8_t reg_address,
    uint8_t* storage,
    uint8_t readsize,
    DRV_I2C_TRANSFER_HANDLE* const transferHandle
)
{
    DRV_I2C_WriteReadTransferAdd(i2cHandle,address,&reg_address,1,storage,readsize,transferHandle);
   
    
}

void Delay_ms(int delay_ms,SYS_TIME_HANDLE  handle){
if (SYS_TIME_DelayMS(delay_ms, &handle) != SYS_TIME_SUCCESS)
            {
                    // Handle error
            }
else if(SYS_TIME_DelayIsComplete(handle) != true)
            {
            // Wait till the delay has not expired
            while (SYS_TIME_DelayIsComplete(handle) == false);
            }
}

void Delay_us(int delay_us,SYS_TIME_HANDLE  handle){
if (SYS_TIME_DelayUS(delay_us, &handle) != SYS_TIME_SUCCESS)
            {
                    // Handle error
            }
else if(SYS_TIME_DelayIsComplete(handle) != true)
            {
            // Wait till the delay has not expired
            while (SYS_TIME_DelayIsComplete(handle) == false);
            }
}

/* *****************************************************************************
 End of File
 */
