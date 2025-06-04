
# BUILD NAME
BUILD_NAME = Build_Template

# NAME OF MAKE FILE FOR HARDWARE BUILD
HW_NAME = HW_Template


######################################
# DEBUG CONFIG
######################################

# SET TO 1 TO ENABLE DEBUG BUILD
DEBUG = 1

# SET TO 1 TO USE STACK FOR FORMATTED PRINTS
DEBUG_STACK_PRINTF = 0

# DEBUG FORMATTED PRINT BUFFER SIZE IN BYTES (SET TO 0 TO USE DEFAULT SIZE)	
DEBUG_BUFFER_SIZE = 128

# MODULE DEBUG LEVELS
DEBUG_ENABLE = \

# LOCAL DEBUG LEVELS
DEBUG_LEVEL = \

# GLOBAL DEBUG LEVELS (SET TO 1 TO ENABLE)
DEBUG_VERBOSE = 1
DEBUG_INFO = 1
DEBUG_ERROR = 1


######################################
# BUILD CONFIG
######################################

# STACK SIZE IN BYTES
APP_STACK = 1024

# HEAP SIZE IN BYTES
APP_HEAP = 0

# SET TO 1 TO BUILD WITH RTOS
APP_RTOS = 1

# SET TO 1 TO OPTIMIZE BUILD FOR SIZE
SIZE = 0

# SET TO 1 TO ENABLE LINK TIME OPTIMIZATION (LAST LINE OF DEFENCE IN CASE OF ROM SHORTAGE)
FLTO = 0

# SET TO 1 TO USE -g3 FLAG IN DEBUG BUILD
USE_G3 = 0

# SET TO 1 TO USE G++ INSTEAD OF GCC COMPILER
GPP = 0

# SET TO 1 TO GENERATE STACK ANALYSIS FILE FOR EACH TRANSLATION UNIT
STACK_ANALYSIS = 0

# SET TO 0 TO DISABLE WARNING IF STACKOVERFLOW MIGHT HAPPEND OR SET TO X BYTES FOR MAXIMUM STACK SIZE
STACK_OVERFLOW = 0

# SET TO 1 TO GENERATE RUNTIME TYPE IDENTIFICATION INFORMATION
RTTI = 0

# SET TO 1 TO CATCH EXCEPTIONS
EXCEPTIONS = 0

# SET TO 1 TO USE DEFAULT LIB
DEF_LIB = 0

# SPECS
SPECS = nano.specs


######################################
# RTOS CONFIG
######################################

# RTOS SYSTEM FILE NAME
RTOS_SYS = stm32f103xb.h

# RTOS IRQ FILE NAME
RTOS_IRQ = irq_armv7m.s

# RTOS NAME
RTOS_NAME = RTX

# RTOS CONFIG FILE
RTOS_CFG = $(DIR_RTOS)/Inc/RTX_Config.h


######################################
# BUILD FILES, INCLUDES OR DEFINES
######################################

# C++ TRANSLATION FILES
BUILD_CPP_FILES = \

# C TRANSLATION FILES
BUILD_C_FILES = \

# ASSEMBLER TRANSLATION FILES
BUILD_ASM_FILES = \

# INCLUDE DIRECTORIES
BUILD_INCLUDE_PATHS = \

# DEFINES
BUILD_DEFINES = \


######################################
# RTOS STUFF
######################################

ifeq ($(APP_RTOS), 1)
BUILD_CPP_FILES += \

BUILD_C_FILES += \
$(DIR_RTOS)/RTX_Config.c \
$(DIR_RTOS)/os_systick.c \
$(DIR_RTOS)/rtx_delay.c \
$(DIR_RTOS)/rtx_evflags.c \
$(DIR_RTOS)/rtx_evr.c \
$(DIR_RTOS)/rtx_kernel.c \
$(DIR_RTOS)/rtx_memory.c \
$(DIR_RTOS)/rtx_mempool.c \
$(DIR_RTOS)/rtx_msgqueue.c \
$(DIR_RTOS)/rtx_mutex.c \
$(DIR_RTOS)/rtx_semaphore.c \
$(DIR_RTOS)/rtx_system.c \
$(DIR_RTOS)/rtx_thread.c \
$(DIR_RTOS)/rtx_timer.c \
$(DIR_RTOS)/rtx_lib.c

BUILD_ASM_FILES += \
$(DIR_RTOS)/IRQ/$(RTOS_IRQ)

BUILD_INCLUDE_PATHS += \
-I$(DIR_RTOS)/Inc

BUILD_DEFINES += \
-DCMSIS_device_header=\"$(RTOS_SYS)\"
endif


######################################
# J-LINK-RELATED CONFIG
######################################

# J-LINK RTT UP BUFFER SIZE (32-bit aligned, 0 to use default)
JLINK_RTT_UP = 512

# J-LINK RTT UP BUFFER SIZE (32-bit aligned, 0 to use default)
JLINK_RTT_DOWN = 0


######################################
# MAKE CONFIG
######################################

include Make/Config.mk


######################################
# APPLICATION MAKE
######################################

include Config/AppConfig.mk


######################################
# HARDWARE MAKE
######################################

include $(DIR_HARDWARE)/$(HW_NAME).mk


######################################
# MCU MAKE
######################################

include $(DIR_MCU)/$(HW_MCU).mk


############################################################################
# DO NOT ALTER STUFF BELOW
############################################################################

#######################################
# BACKEND MAKE FILE
#######################################

include Make/Backend.mk

