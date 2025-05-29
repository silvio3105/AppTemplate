
######################################
# MCU-RELATED CONFIG
######################################

# SELECTED MCU NAME
MCU_NAME = MCU_NAME


######################################
# RTOS CONFIG
######################################

# RTOS SYSTEM FILE NAME
RTOS_SYS = stm32f103xb.h

# RTOS IRQ FILE NAME
RTOS_IRQ = irq_armv7m.s

# RTOS CONFIG FILE
RTOS_CFG = RTOS/RTX/Inc/RTX_Config.h


######################################
# J-LINK CONFIG
######################################

# RTOS SYSTEM FILE
JLINK_DEVICE = STM32F103C8

# J-LINK START ADDRESS
JLINK_ADDR_START = 0x08000000

# J-LINK END ADDRESS
JLINK_ADDR_END = 0x08001000

# J-LINK SWD SPEED IN kHz
JLINK_SPEED = 4000


######################################
# HARDWARE-RELATED FILE LIST
######################################

# C++ TRANSLATION FILES
HW_CPP_FILES = \

# C TRANSLATION FILES
HW_C_FILES = \
$(DIR_HARDWARE)/Src/system_stm32f1xx.c \
$(DIR_HARDWARE)/Src/stm32f1xx_hal_gpio_ex.c \
$(DIR_HARDWARE)/Src/stm32f1xx_hal_tim.c \
$(DIR_HARDWARE)/Src/stm32f1xx_hal_tim_ex.c \
$(DIR_HARDWARE)/Src/stm32f1xx_hal_uart.c \
$(DIR_HARDWARE)/Src/stm32f1xx_hal.c \
$(DIR_HARDWARE)/Src/stm32f1xx_hal_rcc.c \
$(DIR_HARDWARE)/Src/stm32f1xx_hal_rcc_ex.c \
$(DIR_HARDWARE)/Src/stm32f1xx_hal_gpio.c \
$(DIR_HARDWARE)/Src/stm32f1xx_hal_dma.c \
$(DIR_HARDWARE)/Src/stm32f1xx_hal_cortex.c \
$(DIR_HARDWARE)/Src/stm32f1xx_hal_pwr.c \
$(DIR_HARDWARE)/Src/stm32f1xx_hal_flash.c \
$(DIR_HARDWARE)/Src/stm32f1xx_hal_flash_ex.c \
$(DIR_HARDWARE)/Src/stm32f1xx_hal_exti.c \
$(DIR_HARDWARE)/Src/stm32f1xx_hal_i2c.c \
$(DIR_HARDWARE)/Src/stm32f1xx_it.c \

# ASSEMBLER TRANSLATION FILES
HW_ASM_FILES = \


######################################
# HARDWARE-RELATED INCLUDE PATHS
######################################

# INCLUDE DIRECTORIES
HW_INCLUDE_PATHS = \
-I$(DIR_HARDWARE) \
-I$(DIR_HARDWARE)/Inc \


######################################
# HARDWARE-RELATED DRFINES
######################################

# INCLUDE DIRECTORIES
HW_DEFINES = \


######################################
# RTOS STUFF
######################################

ifeq ($(APP_RTOS), 1)
HW_CPP_FILES += \

HW_C_FILES += \
RTOS/RTX/RTX_Config.c \
RTOS/RTX/os_systick.c \
RTOS/RTX/rtx_delay.c \
RTOS/RTX/rtx_evflags.c \
RTOS/RTX/rtx_evr.c \
RTOS/RTX/rtx_kernel.c \
RTOS/RTX/rtx_memory.c \
RTOS/RTX/rtx_mempool.c \
RTOS/RTX/rtx_msgqueue.c \
RTOS/RTX/rtx_mutex.c \
RTOS/RTX/rtx_semaphore.c \
RTOS/RTX/rtx_system.c \
RTOS/RTX/rtx_thread.c \
RTOS/RTX/rtx_timer.c \
RTOS/RTX/rtx_lib.c

HW_ASM_FILES += \
RTOS/RTX/IRQ/$(RTOS_IRQ)

HW_INCLUDE_PATHS += \
-IRTOS/RTX/Inc

HW_DEFINES += \
-DCMSIS_device_header=\"$(RTOS_SYS)\"
endif
