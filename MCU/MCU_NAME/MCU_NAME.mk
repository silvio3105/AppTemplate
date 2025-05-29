
######################################
# MCU-RELATED CONFIG
######################################

# MCU NAME
MCU_NAME = MCU_NAME

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

# MCU FLOAT ABI (leave empty for no float ABI instruction ; "soft" software floating-point ; "softfp" hardware floating-point but software conversions ; "hard" hardware floating-point)
MCU_FLOAT = soft
