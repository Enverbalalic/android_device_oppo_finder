# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#Board
TARGET_BOOTLOADER_BOARD_NAME := MSM8660_SURF
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := true

# Platform 
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
BOARD_USES_STE_HARDWARE := true
TARGET_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_HAVE_HDMI_OUT := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Partitions
BOARD_NAND_PAGE_SIZE := 4096
BOARD_NAND_SPARE_SIZE := 128
TARGET_USERIMAGES_USE_EXT4 := true

# Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/oppo/finder/prebuilt/system/lib/egl/egl.cfg
ENABLE_WEBGL := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Audio
BOARD_USES_GENERIC_AUDIO := true

# USB Mounting
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

#Other
USE_CAMERA_STUB := true
DISABLE_DEXPREOPT := true
BOARD_USE_LEGACY_TOUCHSCREEN := true
