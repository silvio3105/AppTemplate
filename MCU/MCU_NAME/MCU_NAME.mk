
######################################
# MCU-RELATED CONFIG
######################################

# COMPILER DEFINES FOR MCU
MCU_DEFINE = STM32F103xB

# MCU CORE
MCU_CORE = cortex-m3

# NAME OF MCU LINKER SCRIPT FILE
MCU_LINKER = STM32F103XB_FLASH.ld

# NAME OF MCU STARTUP FILE
MCU_STARTUP = startup_stm32f103xb.s

# MCU CORE ARTICHETURE
MCU_ARCH = armv7-m

# SET TO 1 TO USE BIG ENDIAN
MCU_BIG_ENDIAN = 0

# MCU FLOAT ABI ("soft" software floating-point ; "softfp" hardware floating-point but software conversions ; "hard" hardware floating-point)
MCU_FLOAT = soft


######################################
# J-LINK CONFIG
######################################

# RTOS SYSTEM FILE
JLINK_DEVICE = STM32F103C8

# J-LINK START ADDRESS FOR FLASH PROCESS
JLINK_ADDR_START = 0x08000000

# J-LINK END ADDRESS FOR APP ERASE OPERATION
JLINK_ADDR_END = 0x08001000

# J-LINK INTERFACE SPEED IN kHz
JLINK_SPEED = 4000

# J-LINK INTERFACE
JLINK_IF = SWD


######################################
# MCU-RELATED FILE LIST
######################################

# C++ TRANSLATION FILES
MCU_CPP_FILES = \

# C TRANSLATION FILES
MCU_C_FILES = \
$(DIR_MCU)/Src/system_stm32f1xx.c \
$(DIR_MCU)/Src/stm32f1xx_hal_gpio_ex.c \
$(DIR_MCU)/Src/stm32f1xx_hal_tim.c \
$(DIR_MCU)/Src/stm32f1xx_hal_tim_ex.c \
$(DIR_MCU)/Src/stm32f1xx_hal_uart.c \
$(DIR_MCU)/Src/stm32f1xx_hal.c \
$(DIR_MCU)/Src/stm32f1xx_hal_rcc.c \
$(DIR_MCU)/Src/stm32f1xx_hal_rcc_ex.c \
$(DIR_MCU)/Src/stm32f1xx_hal_gpio.c \
$(DIR_MCU)/Src/stm32f1xx_hal_dma.c \
$(DIR_MCU)/Src/stm32f1xx_hal_cortex.c \
$(DIR_MCU)/Src/stm32f1xx_hal_pwr.c \
$(DIR_MCU)/Src/stm32f1xx_hal_flash.c \
$(DIR_MCU)/Src/stm32f1xx_hal_flash_ex.c \
$(DIR_MCU)/Src/stm32f1xx_hal_exti.c \
$(DIR_MCU)/Src/stm32f1xx_hal_i2c.c \

# ASSEMBLER TRANSLATION FILES
MCU_ASM_FILES = \
$(DIR_STARTUP)/$(MCU_STARTUP)


######################################
# MCU-RELATED INCLUDE PATHS
######################################

# INCLUDE DIRECTORIES
MCU_INCLUDE_PATHS = \
-I$(DIR_MCU) \
-I$(DIR_MCU)/Inc \
-I$(DIR_MCU)/Inc/Legacy


######################################
# MCU-RELATED DEFINES
######################################

# MCU DEFINES
MCU_DEFINES = \
-D$(MCU_DEFINE) \
