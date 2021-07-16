#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/FCharmonyv1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/FCharmonyv1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/driver/at24/src/drv_at24.c ../src/config/default/driver/i2c/src/drv_i2c.c ../src/config/default/driver/usart/src/drv_usart.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/i2c/plib_i2c4.c ../src/config/default/peripheral/i2c/plib_i2c5.c ../src/config/default/peripheral/icap/plib_icap4.c ../src/config/default/peripheral/icap/plib_icap2.c ../src/config/default/peripheral/icap/plib_icap3.c ../src/config/default/peripheral/icap/plib_icap1.c ../src/config/default/peripheral/ocmp/plib_ocmp1.c ../src/config/default/peripheral/ocmp/plib_ocmp4.c ../src/config/default/peripheral/ocmp/plib_ocmp2.c ../src/config/default/peripheral/ocmp/plib_ocmp3.c ../src/config/default/peripheral/tmr/plib_tmr4.c ../src/config/default/peripheral/tmr/plib_tmr2.c ../src/config/default/peripheral/tmr/plib_tmr3.c ../src/config/default/peripheral/tmr1/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart6.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/dma/sys_dma.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/tasks.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c MPU6050.c BNO055.c ../src/i2c_personal.c ../src/interrupt_callbacks.c ../src/state_estimation.c ../src/uart_bluetooth.c motors/motor.c ../src/transmitter.c ../src/led.c ../src/app.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/897820976/drv_at24.o ${OBJECTDIR}/_ext/158385033/drv_i2c.o ${OBJECTDIR}/_ext/869808652/drv_usart.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/60169480/plib_i2c4.o ${OBJECTDIR}/_ext/60169480/plib_i2c5.o ${OBJECTDIR}/_ext/1865301019/plib_icap4.o ${OBJECTDIR}/_ext/1865301019/plib_icap2.o ${OBJECTDIR}/_ext/1865301019/plib_icap3.o ${OBJECTDIR}/_ext/1865301019/plib_icap1.o ${OBJECTDIR}/_ext/1865480137/plib_ocmp1.o ${OBJECTDIR}/_ext/1865480137/plib_ocmp4.o ${OBJECTDIR}/_ext/1865480137/plib_ocmp2.o ${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o ${OBJECTDIR}/_ext/60181895/plib_tmr4.o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ${OBJECTDIR}/_ext/60181895/plib_tmr3.o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/14461671/sys_dma.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/MPU6050.o ${OBJECTDIR}/BNO055.o ${OBJECTDIR}/_ext/1360937237/i2c_personal.o ${OBJECTDIR}/_ext/1360937237/interrupt_callbacks.o ${OBJECTDIR}/_ext/1360937237/state_estimation.o ${OBJECTDIR}/_ext/1360937237/uart_bluetooth.o ${OBJECTDIR}/motors/motor.o ${OBJECTDIR}/_ext/1360937237/transmitter.o ${OBJECTDIR}/_ext/1360937237/led.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/897820976/drv_at24.o.d ${OBJECTDIR}/_ext/158385033/drv_i2c.o.d ${OBJECTDIR}/_ext/869808652/drv_usart.o.d ${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/60169480/plib_i2c4.o.d ${OBJECTDIR}/_ext/60169480/plib_i2c5.o.d ${OBJECTDIR}/_ext/1865301019/plib_icap4.o.d ${OBJECTDIR}/_ext/1865301019/plib_icap2.o.d ${OBJECTDIR}/_ext/1865301019/plib_icap3.o.d ${OBJECTDIR}/_ext/1865301019/plib_icap1.o.d ${OBJECTDIR}/_ext/1865480137/plib_ocmp1.o.d ${OBJECTDIR}/_ext/1865480137/plib_ocmp4.o.d ${OBJECTDIR}/_ext/1865480137/plib_ocmp2.o.d ${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o.d ${OBJECTDIR}/_ext/60181895/plib_tmr4.o.d ${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d ${OBJECTDIR}/_ext/60181895/plib_tmr3.o.d ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/14461671/sys_dma.o.d ${OBJECTDIR}/_ext/1881668453/sys_int.o.d ${OBJECTDIR}/_ext/101884895/sys_time.o.d ${OBJECTDIR}/_ext/1171490990/tasks.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/MPU6050.o.d ${OBJECTDIR}/BNO055.o.d ${OBJECTDIR}/_ext/1360937237/i2c_personal.o.d ${OBJECTDIR}/_ext/1360937237/interrupt_callbacks.o.d ${OBJECTDIR}/_ext/1360937237/state_estimation.o.d ${OBJECTDIR}/_ext/1360937237/uart_bluetooth.o.d ${OBJECTDIR}/motors/motor.o.d ${OBJECTDIR}/_ext/1360937237/transmitter.o.d ${OBJECTDIR}/_ext/1360937237/led.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/897820976/drv_at24.o ${OBJECTDIR}/_ext/158385033/drv_i2c.o ${OBJECTDIR}/_ext/869808652/drv_usart.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/60169480/plib_i2c4.o ${OBJECTDIR}/_ext/60169480/plib_i2c5.o ${OBJECTDIR}/_ext/1865301019/plib_icap4.o ${OBJECTDIR}/_ext/1865301019/plib_icap2.o ${OBJECTDIR}/_ext/1865301019/plib_icap3.o ${OBJECTDIR}/_ext/1865301019/plib_icap1.o ${OBJECTDIR}/_ext/1865480137/plib_ocmp1.o ${OBJECTDIR}/_ext/1865480137/plib_ocmp4.o ${OBJECTDIR}/_ext/1865480137/plib_ocmp2.o ${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o ${OBJECTDIR}/_ext/60181895/plib_tmr4.o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ${OBJECTDIR}/_ext/60181895/plib_tmr3.o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/14461671/sys_dma.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/MPU6050.o ${OBJECTDIR}/BNO055.o ${OBJECTDIR}/_ext/1360937237/i2c_personal.o ${OBJECTDIR}/_ext/1360937237/interrupt_callbacks.o ${OBJECTDIR}/_ext/1360937237/state_estimation.o ${OBJECTDIR}/_ext/1360937237/uart_bluetooth.o ${OBJECTDIR}/motors/motor.o ${OBJECTDIR}/_ext/1360937237/transmitter.o ${OBJECTDIR}/_ext/1360937237/led.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/config/default/driver/at24/src/drv_at24.c ../src/config/default/driver/i2c/src/drv_i2c.c ../src/config/default/driver/usart/src/drv_usart.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/i2c/plib_i2c4.c ../src/config/default/peripheral/i2c/plib_i2c5.c ../src/config/default/peripheral/icap/plib_icap4.c ../src/config/default/peripheral/icap/plib_icap2.c ../src/config/default/peripheral/icap/plib_icap3.c ../src/config/default/peripheral/icap/plib_icap1.c ../src/config/default/peripheral/ocmp/plib_ocmp1.c ../src/config/default/peripheral/ocmp/plib_ocmp4.c ../src/config/default/peripheral/ocmp/plib_ocmp2.c ../src/config/default/peripheral/ocmp/plib_ocmp3.c ../src/config/default/peripheral/tmr/plib_tmr4.c ../src/config/default/peripheral/tmr/plib_tmr2.c ../src/config/default/peripheral/tmr/plib_tmr3.c ../src/config/default/peripheral/tmr1/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart6.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/dma/sys_dma.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/tasks.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c MPU6050.c BNO055.c ../src/i2c_personal.c ../src/interrupt_callbacks.c ../src/state_estimation.c ../src/uart_bluetooth.c motors/motor.c ../src/transmitter.c ../src/led.c ../src/app.c ../src/main.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/FCharmonyv1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512H
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/897820976/drv_at24.o: ../src/config/default/driver/at24/src/drv_at24.c  .generated_files/5fcd19b33a3b32180cf29d71237cb80088b17ac7.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/897820976" 
	@${RM} ${OBJECTDIR}/_ext/897820976/drv_at24.o.d 
	@${RM} ${OBJECTDIR}/_ext/897820976/drv_at24.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897820976/drv_at24.o.d" -o ${OBJECTDIR}/_ext/897820976/drv_at24.o ../src/config/default/driver/at24/src/drv_at24.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/158385033/drv_i2c.o: ../src/config/default/driver/i2c/src/drv_i2c.c  .generated_files/d19ea291bdcaf0061bdb9cc23cee96d13cf029b2.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/158385033" 
	@${RM} ${OBJECTDIR}/_ext/158385033/drv_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/158385033/drv_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/158385033/drv_i2c.o.d" -o ${OBJECTDIR}/_ext/158385033/drv_i2c.o ../src/config/default/driver/i2c/src/drv_i2c.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/869808652/drv_usart.o: ../src/config/default/driver/usart/src/drv_usart.c  .generated_files/f838cc8e75baa157632bd02e1ee677e0a692e48c.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/869808652" 
	@${RM} ${OBJECTDIR}/_ext/869808652/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/869808652/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/869808652/drv_usart.o.d" -o ${OBJECTDIR}/_ext/869808652/drv_usart.o ../src/config/default/driver/usart/src/drv_usart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/383c5653256c4df3a79be3b13046919c78f9e821.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/a6fbf5bd552a031179b705cacf48c50b49314e1c.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/ec18158d92f97e72f9700bd8c8ec4435896ef601.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/151875919a4dd3ab1f80ee6b66721284e46ff890.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60169480/plib_i2c4.o: ../src/config/default/peripheral/i2c/plib_i2c4.c  .generated_files/f4fd2f2672956e5b588f464985d38b00b009d70b.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60169480" 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c4.o.d 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60169480/plib_i2c4.o.d" -o ${OBJECTDIR}/_ext/60169480/plib_i2c4.o ../src/config/default/peripheral/i2c/plib_i2c4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60169480/plib_i2c5.o: ../src/config/default/peripheral/i2c/plib_i2c5.c  .generated_files/e1e4ede446b917c055c6ab6cf38c2cd095a53ced.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60169480" 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c5.o.d 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60169480/plib_i2c5.o.d" -o ${OBJECTDIR}/_ext/60169480/plib_i2c5.o ../src/config/default/peripheral/i2c/plib_i2c5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865301019/plib_icap4.o: ../src/config/default/peripheral/icap/plib_icap4.c  .generated_files/d504b5f4fa0d4dba7a4aa939d745e28f9f97766e.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865301019" 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865301019/plib_icap4.o.d" -o ${OBJECTDIR}/_ext/1865301019/plib_icap4.o ../src/config/default/peripheral/icap/plib_icap4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865301019/plib_icap2.o: ../src/config/default/peripheral/icap/plib_icap2.c  .generated_files/620354db216456753623d7547380a8571b70223e.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865301019" 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865301019/plib_icap2.o.d" -o ${OBJECTDIR}/_ext/1865301019/plib_icap2.o ../src/config/default/peripheral/icap/plib_icap2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865301019/plib_icap3.o: ../src/config/default/peripheral/icap/plib_icap3.c  .generated_files/885ba74596b4e131bd0fa2a46bd0efc9445ff40e.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865301019" 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865301019/plib_icap3.o.d" -o ${OBJECTDIR}/_ext/1865301019/plib_icap3.o ../src/config/default/peripheral/icap/plib_icap3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865301019/plib_icap1.o: ../src/config/default/peripheral/icap/plib_icap1.c  .generated_files/3b013483a0791eaec31f878dd58ba411d428e17e.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865301019" 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865301019/plib_icap1.o.d" -o ${OBJECTDIR}/_ext/1865301019/plib_icap1.o ../src/config/default/peripheral/icap/plib_icap1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865480137/plib_ocmp1.o: ../src/config/default/peripheral/ocmp/plib_ocmp1.c  .generated_files/85979bb768db120c9d60708406915ea5a4acfc3c.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865480137" 
	@${RM} ${OBJECTDIR}/_ext/1865480137/plib_ocmp1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865480137/plib_ocmp1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865480137/plib_ocmp1.o.d" -o ${OBJECTDIR}/_ext/1865480137/plib_ocmp1.o ../src/config/default/peripheral/ocmp/plib_ocmp1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865480137/plib_ocmp4.o: ../src/config/default/peripheral/ocmp/plib_ocmp4.c  .generated_files/98039d69eb28fb6cb1ce8b5c6b032e30c5a2591e.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865480137" 
	@${RM} ${OBJECTDIR}/_ext/1865480137/plib_ocmp4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865480137/plib_ocmp4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865480137/plib_ocmp4.o.d" -o ${OBJECTDIR}/_ext/1865480137/plib_ocmp4.o ../src/config/default/peripheral/ocmp/plib_ocmp4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865480137/plib_ocmp2.o: ../src/config/default/peripheral/ocmp/plib_ocmp2.c  .generated_files/7c40a4d4f05edbc757dad26292262c7acf31583d.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865480137" 
	@${RM} ${OBJECTDIR}/_ext/1865480137/plib_ocmp2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865480137/plib_ocmp2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865480137/plib_ocmp2.o.d" -o ${OBJECTDIR}/_ext/1865480137/plib_ocmp2.o ../src/config/default/peripheral/ocmp/plib_ocmp2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o: ../src/config/default/peripheral/ocmp/plib_ocmp3.c  .generated_files/59cea8fd64c998265d0fc89c61a14e011baf3875.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865480137" 
	@${RM} ${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o.d" -o ${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o ../src/config/default/peripheral/ocmp/plib_ocmp3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr4.o: ../src/config/default/peripheral/tmr/plib_tmr4.c  .generated_files/8a6f54ebfa0d259003aeae2fddcd4b3aee9c50a2.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr4.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr4.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr4.o ../src/config/default/peripheral/tmr/plib_tmr4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr2.o: ../src/config/default/peripheral/tmr/plib_tmr2.c  .generated_files/65826bfa01ff3eaefa1583ce7933b772ccb48074.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ../src/config/default/peripheral/tmr/plib_tmr2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr3.o: ../src/config/default/peripheral/tmr/plib_tmr3.c  .generated_files/f36e7f049d2fcc19b213e0e5dde92ca14576e793.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr3.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr3.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr3.o ../src/config/default/peripheral/tmr/plib_tmr3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/7fccd7f3924ce661a185b5af69773173cdabe189.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart6.o: ../src/config/default/peripheral/uart/plib_uart6.c  .generated_files/791b5f926842532af8c264ff2de76e737c7f2aa9.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ../src/config/default/peripheral/uart/plib_uart6.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/eb8ba400e9b558191090b993755ac0b80a44bff2.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14461671/sys_dma.o: ../src/config/default/system/dma/sys_dma.c  .generated_files/15080238dbf875fa7ad694a4cebc767403813a1.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/14461671" 
	@${RM} ${OBJECTDIR}/_ext/14461671/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/14461671/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/14461671/sys_dma.o.d" -o ${OBJECTDIR}/_ext/14461671/sys_dma.o ../src/config/default/system/dma/sys_dma.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/ba3bb463d285dc0870e022bd2765d056961f62e0.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/c16de5c38ccba1ea5d707ab98e5838581367fec2.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/89fadb2695ff461ddebeb5f97d003f128b855d80.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/71c4d3dabce972ccf9734e01f158b942e20f7ebc.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/f2ca3f65e196a954fbd12cb5be3e676ccea1c87e.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/3913599fb414f56481f4f374de7f61b10305d58c.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/MPU6050.o: MPU6050.c  .generated_files/dbf907ef5398a901a095734af40d329b21ac9919.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/MPU6050.o.d 
	@${RM} ${OBJECTDIR}/MPU6050.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/MPU6050.o.d" -o ${OBJECTDIR}/MPU6050.o MPU6050.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BNO055.o: BNO055.c  .generated_files/aad8fc73b1f949041222cbcf2aeeca2eb85abe58.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BNO055.o.d 
	@${RM} ${OBJECTDIR}/BNO055.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/BNO055.o.d" -o ${OBJECTDIR}/BNO055.o BNO055.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/i2c_personal.o: ../src/i2c_personal.c  .generated_files/5bda5fa093c03a33c6a7d7bb621ba7e34b326c75.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_personal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_personal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/i2c_personal.o.d" -o ${OBJECTDIR}/_ext/1360937237/i2c_personal.o ../src/i2c_personal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/interrupt_callbacks.o: ../src/interrupt_callbacks.c  .generated_files/ef704a4d27bf9d385335629908ae8981ffaa6f1b.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/interrupt_callbacks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/interrupt_callbacks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/interrupt_callbacks.o.d" -o ${OBJECTDIR}/_ext/1360937237/interrupt_callbacks.o ../src/interrupt_callbacks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/state_estimation.o: ../src/state_estimation.c  .generated_files/3a1a2f21de294b2c4bd7bf12f99268612427b9cf.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/state_estimation.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/state_estimation.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/state_estimation.o.d" -o ${OBJECTDIR}/_ext/1360937237/state_estimation.o ../src/state_estimation.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/uart_bluetooth.o: ../src/uart_bluetooth.c  .generated_files/784e8a82efdddc7ca51f50048ad5bef30353a16c.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uart_bluetooth.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uart_bluetooth.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/uart_bluetooth.o.d" -o ${OBJECTDIR}/_ext/1360937237/uart_bluetooth.o ../src/uart_bluetooth.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/motors/motor.o: motors/motor.c  .generated_files/7da10569f7049c93f2dec894c158276162fea59b.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/motors" 
	@${RM} ${OBJECTDIR}/motors/motor.o.d 
	@${RM} ${OBJECTDIR}/motors/motor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/motors/motor.o.d" -o ${OBJECTDIR}/motors/motor.o motors/motor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/transmitter.o: ../src/transmitter.c  .generated_files/70dedff29ceacf68f8d8398ec01a6473890feb22.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/transmitter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/transmitter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/transmitter.o.d" -o ${OBJECTDIR}/_ext/1360937237/transmitter.o ../src/transmitter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/led.o: ../src/led.c  .generated_files/fa0f64168604cf051674096d16df6256da09e9b6.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/led.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/led.o.d" -o ${OBJECTDIR}/_ext/1360937237/led.o ../src/led.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/cfa0c5fe5e5a397058164ab8d3b0334a09fe0955.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/811aff943654ced5767f33bd4f1c7ed5eee9c45e.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/897820976/drv_at24.o: ../src/config/default/driver/at24/src/drv_at24.c  .generated_files/5968c17a6c51dd0826e81daaba8257f0d4bbbd2d.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/897820976" 
	@${RM} ${OBJECTDIR}/_ext/897820976/drv_at24.o.d 
	@${RM} ${OBJECTDIR}/_ext/897820976/drv_at24.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/897820976/drv_at24.o.d" -o ${OBJECTDIR}/_ext/897820976/drv_at24.o ../src/config/default/driver/at24/src/drv_at24.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/158385033/drv_i2c.o: ../src/config/default/driver/i2c/src/drv_i2c.c  .generated_files/7270e33de9edad5e89510af23f226d4159e9d4f7.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/158385033" 
	@${RM} ${OBJECTDIR}/_ext/158385033/drv_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/158385033/drv_i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/158385033/drv_i2c.o.d" -o ${OBJECTDIR}/_ext/158385033/drv_i2c.o ../src/config/default/driver/i2c/src/drv_i2c.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/869808652/drv_usart.o: ../src/config/default/driver/usart/src/drv_usart.c  .generated_files/cbc618135f8454220f1f6dec64781c4dd75d0fdb.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/869808652" 
	@${RM} ${OBJECTDIR}/_ext/869808652/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/869808652/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/869808652/drv_usart.o.d" -o ${OBJECTDIR}/_ext/869808652/drv_usart.o ../src/config/default/driver/usart/src/drv_usart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/7bdec851feae85434fd15b63cab8871751c03110.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/d78de3590dc3310e78e7fc5b13bc5ad98595d3ce.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/fadbd1af79463a77d1700a7e5f1333bd6936e978.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/963533a753234ccca50e477d3d6b54fe684a8900.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60169480/plib_i2c4.o: ../src/config/default/peripheral/i2c/plib_i2c4.c  .generated_files/4564b52c868691aa17600aa3da7a6a6f657901c1.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60169480" 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c4.o.d 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60169480/plib_i2c4.o.d" -o ${OBJECTDIR}/_ext/60169480/plib_i2c4.o ../src/config/default/peripheral/i2c/plib_i2c4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60169480/plib_i2c5.o: ../src/config/default/peripheral/i2c/plib_i2c5.c  .generated_files/290d589145284a55aed575963bc29c8ceaff06fa.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60169480" 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c5.o.d 
	@${RM} ${OBJECTDIR}/_ext/60169480/plib_i2c5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60169480/plib_i2c5.o.d" -o ${OBJECTDIR}/_ext/60169480/plib_i2c5.o ../src/config/default/peripheral/i2c/plib_i2c5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865301019/plib_icap4.o: ../src/config/default/peripheral/icap/plib_icap4.c  .generated_files/d568cefe4f1f0ea023e3d08b9aea188a28dd822.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865301019" 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865301019/plib_icap4.o.d" -o ${OBJECTDIR}/_ext/1865301019/plib_icap4.o ../src/config/default/peripheral/icap/plib_icap4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865301019/plib_icap2.o: ../src/config/default/peripheral/icap/plib_icap2.c  .generated_files/ba19c38109d6bb1c52ae868dd41c777da54a7b27.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865301019" 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865301019/plib_icap2.o.d" -o ${OBJECTDIR}/_ext/1865301019/plib_icap2.o ../src/config/default/peripheral/icap/plib_icap2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865301019/plib_icap3.o: ../src/config/default/peripheral/icap/plib_icap3.c  .generated_files/b7cc7f63bc84ad72464b6c4f9d12665bb90543b0.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865301019" 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865301019/plib_icap3.o.d" -o ${OBJECTDIR}/_ext/1865301019/plib_icap3.o ../src/config/default/peripheral/icap/plib_icap3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865301019/plib_icap1.o: ../src/config/default/peripheral/icap/plib_icap1.c  .generated_files/ca79d7734bcecdd09df63608366ab4ca7a5d6e8a.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865301019" 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865301019/plib_icap1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865301019/plib_icap1.o.d" -o ${OBJECTDIR}/_ext/1865301019/plib_icap1.o ../src/config/default/peripheral/icap/plib_icap1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865480137/plib_ocmp1.o: ../src/config/default/peripheral/ocmp/plib_ocmp1.c  .generated_files/d0b7637d78dc3f16f9ba0bd9f1c4096e1c438c8d.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865480137" 
	@${RM} ${OBJECTDIR}/_ext/1865480137/plib_ocmp1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865480137/plib_ocmp1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865480137/plib_ocmp1.o.d" -o ${OBJECTDIR}/_ext/1865480137/plib_ocmp1.o ../src/config/default/peripheral/ocmp/plib_ocmp1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865480137/plib_ocmp4.o: ../src/config/default/peripheral/ocmp/plib_ocmp4.c  .generated_files/192503c35e21ad287023282f5aafc7a1555e4756.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865480137" 
	@${RM} ${OBJECTDIR}/_ext/1865480137/plib_ocmp4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865480137/plib_ocmp4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865480137/plib_ocmp4.o.d" -o ${OBJECTDIR}/_ext/1865480137/plib_ocmp4.o ../src/config/default/peripheral/ocmp/plib_ocmp4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865480137/plib_ocmp2.o: ../src/config/default/peripheral/ocmp/plib_ocmp2.c  .generated_files/2bf24e7367eae73a3c1ea4404477f9c6d2be97db.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865480137" 
	@${RM} ${OBJECTDIR}/_ext/1865480137/plib_ocmp2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865480137/plib_ocmp2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865480137/plib_ocmp2.o.d" -o ${OBJECTDIR}/_ext/1865480137/plib_ocmp2.o ../src/config/default/peripheral/ocmp/plib_ocmp2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o: ../src/config/default/peripheral/ocmp/plib_ocmp3.c  .generated_files/20f9aa79e4e1be15ccb0f233952f385d4b97de19.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865480137" 
	@${RM} ${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o.d" -o ${OBJECTDIR}/_ext/1865480137/plib_ocmp3.o ../src/config/default/peripheral/ocmp/plib_ocmp3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr4.o: ../src/config/default/peripheral/tmr/plib_tmr4.c  .generated_files/cc387a0d2c24629fed21c60aa93d72f75a879e53.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr4.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr4.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr4.o ../src/config/default/peripheral/tmr/plib_tmr4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr2.o: ../src/config/default/peripheral/tmr/plib_tmr2.c  .generated_files/2458b6b95630c6e9baa3e07704562fdb902da61f.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr2.o ../src/config/default/peripheral/tmr/plib_tmr2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60181895/plib_tmr3.o: ../src/config/default/peripheral/tmr/plib_tmr3.c  .generated_files/547de1600d7ad97b86d9b4d7d0c43a37b48ee39d.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr3.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr3.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr3.o ../src/config/default/peripheral/tmr/plib_tmr3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865638794/plib_tmr1.o: ../src/config/default/peripheral/tmr1/plib_tmr1.c  .generated_files/9d48373758cced45ceaf665c0ebf8ffcf07e12a1.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865638794" 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865638794/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1865638794/plib_tmr1.o ../src/config/default/peripheral/tmr1/plib_tmr1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart6.o: ../src/config/default/peripheral/uart/plib_uart6.c  .generated_files/e416725812d7e3ffc1feccee12979c00ae28ea33.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ../src/config/default/peripheral/uart/plib_uart6.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/1cfa7841dfddf8f3a1a028c7e652a5f8cee8c9dd.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14461671/sys_dma.o: ../src/config/default/system/dma/sys_dma.c  .generated_files/3e219e85e2d6d838bff85ab273a01b8380b8139d.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/14461671" 
	@${RM} ${OBJECTDIR}/_ext/14461671/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/14461671/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/14461671/sys_dma.o.d" -o ${OBJECTDIR}/_ext/14461671/sys_dma.o ../src/config/default/system/dma/sys_dma.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/87515183affc535bdfd59a798ecab325dc3b837d.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/7825774965d543716394de32b2ce7c7a85beff91.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/e65e8c59ee15bf6eb2907e0e69f39119c8047f57.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/1d8c8f699263e8cc306b5c064272171b12a2d81.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/f787bc8a04a352515b656071459542c99a338447.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/c140c9522490328087bb5fa8f12c50d7c0c88285.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/MPU6050.o: MPU6050.c  .generated_files/7baa63046224b4707e83e1a779c66afca3efb505.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/MPU6050.o.d 
	@${RM} ${OBJECTDIR}/MPU6050.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/MPU6050.o.d" -o ${OBJECTDIR}/MPU6050.o MPU6050.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BNO055.o: BNO055.c  .generated_files/6b06bfa38fbd5e426c231cf1189e1edb2f4da5cd.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BNO055.o.d 
	@${RM} ${OBJECTDIR}/BNO055.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/BNO055.o.d" -o ${OBJECTDIR}/BNO055.o BNO055.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/i2c_personal.o: ../src/i2c_personal.c  .generated_files/6f4201c7c2765d55ed05952711b9f97f5b59987d.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_personal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_personal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/i2c_personal.o.d" -o ${OBJECTDIR}/_ext/1360937237/i2c_personal.o ../src/i2c_personal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/interrupt_callbacks.o: ../src/interrupt_callbacks.c  .generated_files/25be6e5f3dcdf88b6e671633962d378014364b53.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/interrupt_callbacks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/interrupt_callbacks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/interrupt_callbacks.o.d" -o ${OBJECTDIR}/_ext/1360937237/interrupt_callbacks.o ../src/interrupt_callbacks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/state_estimation.o: ../src/state_estimation.c  .generated_files/5220b750b09276e210397bc9fc8dfab5ff2e6145.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/state_estimation.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/state_estimation.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/state_estimation.o.d" -o ${OBJECTDIR}/_ext/1360937237/state_estimation.o ../src/state_estimation.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/uart_bluetooth.o: ../src/uart_bluetooth.c  .generated_files/643388a7a29c5e1b280889f6186e8a7febef43d9.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uart_bluetooth.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uart_bluetooth.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/uart_bluetooth.o.d" -o ${OBJECTDIR}/_ext/1360937237/uart_bluetooth.o ../src/uart_bluetooth.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/motors/motor.o: motors/motor.c  .generated_files/88b9877fae85733c01630ef9c94ea16f7c4e7d17.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/motors" 
	@${RM} ${OBJECTDIR}/motors/motor.o.d 
	@${RM} ${OBJECTDIR}/motors/motor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/motors/motor.o.d" -o ${OBJECTDIR}/motors/motor.o motors/motor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/transmitter.o: ../src/transmitter.c  .generated_files/f43d490598561e8cbb3147190f374a63fa1f9d6a.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/transmitter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/transmitter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/transmitter.o.d" -o ${OBJECTDIR}/_ext/1360937237/transmitter.o ../src/transmitter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/led.o: ../src/led.c  .generated_files/a412693f77517bc893f980ee5d03d54822cae07a.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/led.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/led.o.d" -o ${OBJECTDIR}/_ext/1360937237/led.o ../src/led.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/ada76c8c94ca102b2afa34b581b55821968bf297.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/87b2dbc2e62caf92df92b6d2a00d05cef366e6d7.flag .generated_files/73e2677e10fb41852dd38dedff52fc31eb90924a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MX795F512H_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/FCharmonyv1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/FCharmonyv1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/FCharmonyv1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/FCharmonyv1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/FCharmonyv1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
