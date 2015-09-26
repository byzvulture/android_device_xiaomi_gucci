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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

LOCAL_PATH := device/xiaomi/gucci

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# media_profiles and media_codecs xmls for 8916
PRODUCT_COPY_FILES += \
    device/xiaomi/gucci/media/media_profiles.xml:system/etc/media_profiles.xml \
    device/xiaomi/gucci/media/media_codecs.xml:system/etc/media_codecs.xml

# Audio configuration file
PRODUCT_COPY_FILES += \
    device/xiaomi/gucci/etc/audio_policy.conf:system/etc/audio_policy.conf \
	device/xiaomi/gucci/etc/audio_effects.conf:system/etc/audio_effects.conf \
    device/xiaomi/gucci/etc/mixer_paths_mtp.xml:system/etc/mixer_paths_mtp.xml \
    device/xiaomi/gucci/etc/mixer_paths_qrd_skuh.xml:system/etc/mixer_paths_qrd_skuh.xml \
    device/xiaomi/gucci/etc/mixer_paths_qrd_skui.xml:system/etc/mixer_paths_qrd_skui.xml \
    device/xiaomi/gucci/etc/mixer_paths_qrd_skuhf.xml:system/etc/mixer_paths_qrd_skuhf.xml \
    device/xiaomi/gucci/etc/mixer_paths.xml:system/etc/mixer_paths.xml

# DPM
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/etc/dpm/fdMgr/fd.conf:system/etc/dpm/fdMgr/fd.conf

# gps/location secuity configuration file
PRODUCT_COPY_FILES += \
    device/xiaomi/gucci/sec_config:system/etc/sec_config

# Listen configuration file
PRODUCT_COPY_FILES += \
    device/xiaomi/gucci/listen_platform_info.xml:system/etc/listen_platform_info.xml

PRODUCT_COPY_FILES += \
    device/xiaomi/gucci/etc/capability.xml:system/etc/capability.xml \
    device/xiaomi/gucci/etc/qlog-conf.xml:system/etc/qlog-conf.xml \
    device/xiaomi/gucci/etc/wfdconfig.xml:system/etc/wfdconfig.xml \
    device/xiaomi/gucci/etc/wfdconfigsink.xml:system/etc/wfdconfigsink.xml

PRODUCT_COPY_FILES += \
    device/xiaomi/gucci/etc/whitelist_appops.xml:system/etc/whitelist_appops.xml

PRODUCT_COPY_FILES += \
    device/xiaomi/gucci/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/xiaomi/gucci/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/xiaomi/gucci/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/xiaomi/gucci/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/xiaomi/gucci/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# Logmask
PRODUCT_COPY_FILES += \
    device/xiaomi/gucci/etc/logmask/default_diag_mask.cfg:system/etc/logmask/default_diag_mask.cfg \
    device/xiaomi/gucci/etc/logmask/dynamic_debug_mask.cfg:system/etc/logmask/dynamic_debug_mask.cfg \
    device/xiaomi/gucci/etc/logmask/qdss.cfg:system/etc/logmask/qdss.cfg

# Offmode charge
PRODUCT_COPY_FILES += \
    device/xiaomi/gucci/ramdisk/charger:root/charger \
    device/xiaomi/gucci/ramdisk/res/images/charger/battery_0.png:root/res/images/charger/battery_0.png \
    device/xiaomi/gucci/ramdisk/res/images/charger/battery_1.png:root/res/images/charger/battery_1.png \
    device/xiaomi/gucci/ramdisk/res/images/charger/battery_2.png:root/res/images/charger/battery_2.png \
    device/xiaomi/gucci/ramdisk/res/images/charger/battery_3.png:root/res/images/charger/battery_3.png \
    device/xiaomi/gucci/ramdisk/res/images/charger/battery_4.png:root/res/images/charger/battery_4.png \
    device/xiaomi/gucci/ramdisk/res/images/charger/battery_5.png:root/res/images/charger/battery_5.png \
    device/xiaomi/gucci/ramdisk/res/images/charger/battery_charge.png:root/res/images/charger/battery_charge.png \
    device/xiaomi/gucci/ramdisk/res/images/charger/battery_fail.png:root/res/images/charger/battery_fail.png \
    device/xiaomi/gucci/ramdisk/res/images/mmi/fail.png:root/res/images/mmi/fail.png \
    device/xiaomi/gucci/ramdisk/res/images/mmi/pass.png:root/res/images/mmi/pass.png

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# ANT+ stack
PRODUCT_PACKAGES += \
    libasan_preload \
    com.dsi.ant.antradio_library \
    AntHalService \
    libantradio \
    applypatch_static \
    check_prereq \
    loki_tool \
    updater \
    asanwrapper \
    cjpeg \
    djpeg \
    gdbjithelper \
    MiSettings \
    antradio_app

PRODUCT_PACKAGES += \
	libemoji \
	libion

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.primary.msm8916 \
    audio_policy.msm8916 \
    libaudio-resampler

# Display
PRODUCT_PACKAGES += \
    copybit.msm8916 \
    gralloc.msm8916 \
    libmemalloc \
    memtrack.msm8916 \
    hwcomposer.msm8916 \
    liboverlay \
    libgenlock \
    libqdutils \
    libqdMetaData

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck \
    fibmap.f2fs \
    fsck.f2fs \
    make_ext4fs \
    mkfs.f2fs \
    resize2fs \
    setup_fs

# Flatland
PRODUCT_PACKAGES += \
    Camera2

# FM
PRODUCT_PACKAGES += \
    FM2 \
    FMRecord \
    libqcomfm_jni \
    qcom.fmradio

PRODUCT_PACKAGES += \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    tinymix

# QRNGD
PRODUCT_PACKAGES += \
    qrngd \
    qrngp

# Crda
PRODUCT_PACKAGES += \
    crda \
    linville.key.pub.pem \
    regdbdump \
    regulatory.bin

# keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl \
    $(LOCAL_PATH)/keylayout/msm8x16-skui-snd-card_Button_Jack.kl:system/usr/keylayout/msm8x16-skui-snd-card_Button_Jack.kl \

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8916 \
    lights.msm8916 \

# Torch
PRODUCT_PACKAGES += \
    Torch

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdashplayer \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw \
    qcmediaplayer

PRODUCT_BOOT_JARS += \
    qcmediaplayer

# Power HAL
PRODUCT_PACKAGES += \
    power.msm8916

# QC PROPRIETARY
ifneq ($(QCPATH),)
# proprietary wifi display, if available
PRODUCT_BOOT_JARS += WfdCommon

# Connectivity Engine support
ifeq ($(BOARD_USES_QCNE),true)
PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    services-ext \
    init.cne.rc

PRODUCT_PROPERTY_OVERRIDES +=
    persist.cne.feature=4

endif
endif

# GPS
PRODUCT_PACKAGES += \
    gps.msm8916 \
    libgps.utils \
    libloc_eng \
    libloc_api_v02 \
    libloc_adapter

# Recovery
PRODUCT_PACKAGES += \
    recoverylog.sh \
    minivold

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/hcidump.sh:system/etc/hcidump.sh \
    $(LOCAL_PATH)/etc/hsic.control.bt.sh:system/etc/hsic.control.bt.sh \
    $(LOCAL_PATH)/etc/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/etc/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/etc/init.ath3k.bt.sh:system/etc/init.ath3k.bt.sh \
    $(LOCAL_PATH)/etc/init.crda.sh:system/etc/init.crda.sh \
    $(LOCAL_PATH)/etc/init.qcom.audio.sh:system/etc/init.qcom.audio.sh \
    $(LOCAL_PATH)/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    $(LOCAL_PATH)/etc/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
    $(LOCAL_PATH)/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/etc/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
    $(LOCAL_PATH)/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    $(LOCAL_PATH)/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    $(LOCAL_PATH)/etc/init.qcom.uicc.sh:system/etc/init.qcom.uicc.sh \
    $(LOCAL_PATH)/etc/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/etc/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny \
    $(LOCAL_PATH)/etc/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/firmware/82_23_2.1_AA.fw:system/etc/firmware/82_23_2.1_AA.fw \
    $(LOCAL_PATH)/etc/firmware/82_23_2.1_AA.raw.4A.00.cfg:system/etc/firmware/82_23_2.1_AA.raw.4A.00.cfg \
    $(LOCAL_PATH)/etc/firmware/82_23_2.1_AA.raw.4A.0F.cfg:system/etc/firmware/82_23_2.1_AA.raw.4A.0F.cfg \
    $(LOCAL_PATH)/etc/firmware/82_23_2.1_AA.raw.4A.03.cfg:system/etc/firmware/82_23_2.1_AA.raw.4A.03.cfg \
    $(LOCAL_PATH)/etc/firmware/82_23_2.1_AA.raw.4B.00.cfg:system/etc/firmware/82_23_2.1_AA.raw.4B.00.cfg \
    $(LOCAL_PATH)/etc/firmware/82_23_2.1_AA.raw.4B.08.cfg:system/etc/firmware/82_23_2.1_AA.raw.4B.08.cfg \
    $(LOCAL_PATH)/etc/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
    $(LOCAL_PATH)/etc/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
    $(LOCAL_PATH)/etc/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
    $(LOCAL_PATH)/etc/firmware/a300_pfp.fw:system/etc/firmware/a300_pfp.fw \
    $(LOCAL_PATH)/etc/firmware/a300_pm4.fw:system/etc/firmware/a300_pm4.fw \
    $(LOCAL_PATH)/etc/firmware/a330_pfp.fw:system/etc/firmware/a330_pfp.fw \
    $(LOCAL_PATH)/etc/firmware/a330_pm4.fw:system/etc/firmware/a330_pm4.fw \
    $(LOCAL_PATH)/etc/firmware/a420_pfp.fw:system/etc/firmware/a420_pfp.fw \
    $(LOCAL_PATH)/etc/firmware/a420_pm4.fw:system/etc/firmware/a420_pm4.fw \
    $(LOCAL_PATH)/etc/firmware/cpp_firmware_v1_1_1.fw:system/etc/firmware/cpp_firmware_v1_1_1.fw \
    $(LOCAL_PATH)/etc/firmware/cpp_firmware_v1_1_6.fw:system/etc/firmware/cpp_firmware_v1_1_6.fw \
    $(LOCAL_PATH)/etc/firmware/cpp_firmware_v1_2_0.fw:system/etc/firmware/cpp_firmware_v1_2_0.fw \
    $(LOCAL_PATH)/etc/firmware/cpp_firmware_v1_4_0.fw:system/etc/firmware/cpp_firmware_v1_4_0.fw \
    $(LOCAL_PATH)/etc/firmware/ice40.bin:system/etc/firmware/ice40.bin \
    $(LOCAL_PATH)/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    $(LOCAL_PATH)/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
    $(LOCAL_PATH)/etc/firmware/Signedrompatch_v20.bin:system/etc/firmware/Signedrompatch_v20.bin \
    $(LOCAL_PATH)/etc/firmware/Signedrompatch_v21.bin:system/etc/firmware/Signedrompatch_v21.bin \
    $(LOCAL_PATH)/etc/firmware/Signedrompatch_v24.bin:system/etc/firmware/Signedrompatch_v24.bin \
    $(LOCAL_PATH)/etc/firmware/Signedrompatch_v30.bin:system/etc/firmware/Signedrompatch_v30.bin \
    $(LOCAL_PATH)/etc/firmware/venus.b00:system/etc/firmware/venus.b00 \
    $(LOCAL_PATH)/etc/firmware/venus.b01:system/etc/firmware/venus.b01 \
    $(LOCAL_PATH)/etc/firmware/venus.b02:system/etc/firmware/venus.b02 \
    $(LOCAL_PATH)/etc/firmware/venus.b03:system/etc/firmware/venus.b03 \
    $(LOCAL_PATH)/etc/firmware/venus.b04:system/etc/firmware/venus.b04 \
    $(LOCAL_PATH)/etc/firmware/venus.mbn:system/etc/firmware/venus.mbn \
    $(LOCAL_PATH)/etc/firmware/venus.mdt:system/etc/firmware/venus.mdt

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/init.d/01cpu:system/etc/init.d/01cpu

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/ramdisk/init.class_main.sh:root/init.class_main.sh \
    $(LOCAL_PATH)/ramdisk/init.mdm.sh:root/init.mdm.sh \
    $(LOCAL_PATH)/ramdisk/file_contexts:root/file_contexts \
    $(LOCAL_PATH)/ramdisk/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.factory.sh:root/init.qcom.factory.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/ramdisk/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.ssr.sh:root/init.qcom.ssr.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh \
    $(LOCAL_PATH)/ramdisk/init.rc:root/init.rc \
    $(LOCAL_PATH)/ramdisk/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/ramdisk/property_contexts:root/property_contexts \
    $(LOCAL_PATH)/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.rc:root/ueventd.rc

PRODUCT_PACKAGES += \
    wcnss_service

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    libdashplayer \
    librs_jni

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Wifi
PRODUCT_PACKAGES += \
    libcurl \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    libxml2 \
    wcnss_service

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=128m

#Set default profile to FUT
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.logkit.ctrlcode=1

# System Properties
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# appops configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.strict_op_enable=false

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=60

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.whitelist=/system/etc/whitelist_appops.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/vendor/lib/libqc-opt.so \
    persist.radio.apm_sim_not_pwdn=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320

PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qc_nlp_in_use=1 \
    persist.loc.nlp_name=com.qualcomm.services.location \
    ro.gps.agps_provider=1 \
    ro.pip.gated=0 \

# Recovery
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.forbid_format=/fsg,/firmware,/persist,/boot

$(call inherit-product, build/target/product/full.mk)

$(call inherit-product, frameworks/native/build/phone-hdpi-2048-dalvik-heap.mk)

# call the proprietary setup
#$(call inherit-product, vendor/xiaomi/gucci/gucci-vendor.mk)

$(call inherit-product, device/xiaomi/gucci/vendor/copyfiles.mk)
