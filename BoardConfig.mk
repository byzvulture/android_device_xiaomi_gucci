#
# Copyright (C) 2014 The CyanogenMod Project
#
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
#
# config.mk
#
# Product-specific compile-time definitions.
#
USE_CAMERA_STUB := false
LOCAL_PATH := device/xiaomi/gucci

-include vendor/xiaomi/gucci/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

TARGET_NO_BOOTLOADER := true
TARGET_NO_lKERNEL := false
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RPC := true

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Platform


TARGET_ARCH := arm
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306
TARGET_BOOTLOADER_BOARD_NAME := msm8916
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
TARGET_BOARD_SUFFIX := _32

# Audio
BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_ENABLED_FM := true
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := false
AUDIO_FEATURE_DISABLED_DS1_DOLBY_DDP := true


# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
QCOM_BT_USE_SMD_TTY := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
BOARD_USES_LEGACY_MMAP := true

# charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# Flags
COMMON_GLOBAL_CFLAGS += -D_ION_HEAP_MASK_COMPATIBILITY_WA

# Fonts
EXTENDED_FONT_FOOTPRINT := true


# Graphics

TARGET_USES_ION := true

TARGET_HAVE_HDMI_OUT := false
TARGET_USES_OVERLAY := true
TARGET_USES_C2D_COMPOSITION := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
BOARD_EGL_CFG := $(LOCAL_PATH)/egl.cfg
TARGET_HARDWARE_3D := false
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
MAX_EGL_CACHE_ENTRY_SIZE:= 1024*1024
USE_OPENGL_RENDERER := true

# Logging
TARGET_USES_LOGD := false

# Liblight
TARGET_PROVIDES_LIBLIGHT := true

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
BOARD_KERNEL_SEPARATED_DT := true

# Partitions
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838860800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2631680000
BOARD_CACHEIMAGE_PARTITION_SIZE := 134217728
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)


# Power
TARGET_POWERHAL_VARIANT := qcom

# Qualcomm Hardware
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP
TARGET_USES_QCOM_BSP := true
BOARD_USES_QCOM_HARDWARE := true
#BOARD_USES_QC_TIME_SERVICES := true
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/
USE_DEVICE_SPECIFIC_QCOM_PROPRIETARY:= true

# Vendor Init
TARGET_UNIFIED_DEVICE := true
#TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := device/xiaomi/gucci/init/init_gucci.c

# RIL
TARGET_RIL_VARIANT := caf
PROTOBUF_SUPPORTED := true

# malloc
MALLOC_IMPL := dlmalloc
# Dex
ifeq ($(HOST_OS),linux)
ifeq ($(TARGET_BUILD_VARIANT),user)
ifeq ($(WITH_DEXPREOPT),)
WITH_DEXPREOPT := true
endif
endif
endif
# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/recovery.fstab
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/recovery/init.rc
BOARD_RECOVERY_SWIPE := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
DEVICE_RESOLUTION := 720x1280

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 65
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# SELinux
-include device/qcom/sepolicy/sepolicy.mk

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"
TARGET_USES_WCNSS_CTRL := true
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP := "ap"
