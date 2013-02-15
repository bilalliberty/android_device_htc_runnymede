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
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common msm7x30 configs
$(call inherit-product, device/htc/msm7x30-common/msm7x30.mk)

# stuff common to all HTC phones
#$(call inherit-product, device/htc/common/common.mk)

# HTC Audio
$(call inherit-product, device/htc/runnymede/media_a1026.mk)
$(call inherit-product, device/htc/runnymede/media_htcaudio.mk)

# Inherit qcom proprietary blobs
$(call inherit-product, vendor/qcom/proprietary/qcom-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/runnymede/overlay

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
    device/htc/runnymede/ramdisk/init.runnymede.rc:root/init.runnymede.rc \
    device/htc/runnymede/ramdisk/ueventd.runnymede.rc:root/ueventd.runnymede.rc \
    device/htc/runnymede/ramdisk/fstab.runnymede:root/fstab.runnymede
	
# Media Profiles
PRODUCT_COPY_FILES += \
    device/htc/runnymede/configs/media_profiles.xml:system/etc/media_profiles.xml

# GPS config
PRODUCT_COPY_FILES += device/htc/runnymede/configs/gps.conf:system/etc/gps.conf

# BT vendor configuration
PRODUCT_COPY_FILES += \
    device/htc/runnymede/configs/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# HTC BT audio config
PRODUCT_COPY_FILES += device/htc/runnymede/configs/AudioBTID.csv:system/etc/AudioBTID.csv

# vold config
PRODUCT_COPY_FILES += device/htc/runnymede/configs/vold.fstab:system/etc/vold.fstab

# Device specific firmware
PRODUCT_COPY_FILES += \
    device/htc/runnymede/firmware/BCM4330B1_002.001.003.0550.0568.hcd:system/etc/firmware/BCM4330B1_002.001.003.0550.0568.hcd \
    device/htc/runnymede/firmware/default.acdb:system/etc/firmware/default.acdb \
    device/htc/runnymede/firmware/default_org.acdb:system/etc/firmware/default_org.acdb

# ACDB
#PRODUCT_COPY_FILES += \
#    device/htc/runnymede/configs/default.acdb:system/etc/firmware/default.acdb \
#    device/htc/runnymede/configs/default_org.acdb:system/etc/firmware/default_org.acdb

# Audio DSP Profiles
PRODUCT_COPY_FILES += \
    device/htc/runnymede/dsp/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/runnymede/dsp/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    device/htc/runnymede/dsp/AIC3254_REG_XD.csv:system/etc/AIC3254_REG_XD.csv \
    device/htc/runnymede/dsp/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    device/htc/runnymede/dsp/HP_Audio.csv:system/etc/HP_Audio.csv \
    device/htc/runnymede/dsp/HP_Video.csv:system/etc/HP_Video.csv \
    device/htc/runnymede/dsp/SPK_Combination.csv:system/etc/SPK_Combination.csv \
    device/htc/runnymede/dsp/soundimage/Sound_Bass_Booster.txt:system/etc/soundimage/Sound_Bass_Booster.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Blues.txt:system/etc/soundimage/Sound_Blues.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Classical.txt:system/etc/soundimage/Sound_Classical.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Country.txt:system/etc/soundimage/Sound_Country.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Dolby_A_HP.txt:system/etc/soundimage/Sound_Dolby_A_HP.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Dolby_A_SPK.txt:system/etc/soundimage/Sound_Dolby_A_SPK.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Dolby_V_HP.txt:system/etc/soundimage/Sound_Dolby_V_HP.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Dolby_V_SPK.txt:system/etc/soundimage/Sound_Dolby_V_SPK.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Dualmic.txt:system/etc/soundimage/Sound_Dualmic.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Dualmic_EP.txt:system/etc/soundimage/Sound_Dualmic_EP.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Dualmic_SPK.txt:system/etc/soundimage/Sound_Dualmic_SPK.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Jazz.txt:system/etc/soundimage/Sound_Jazz.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Latin.txt:system/etc/soundimage/Sound_Latin.txt \
    device/htc/runnymede/dsp/soundimage/Sound_New_Age.txt:system/etc/soundimage/Sound_New_Age.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Piano.txt:system/etc/soundimage/Sound_Piano.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Pop.txt:system/etc/soundimage/Sound_Pop.txt \
    device/htc/runnymede/dsp/soundimage/Sound_R_B.txt:system/etc/soundimage/Sound_R_B.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Rock.txt:system/etc/soundimage/Sound_Rock.txt \
    device/htc/runnymede/dsp/soundimage/Sound_SRS_A_HP.txt:system/etc/soundimage/Sound_SRS_A_HP.txt \
    device/htc/runnymede/dsp/soundimage/Sound_SRS_A_SPK.txt:system/etc/soundimage/Sound_SRS_A_SPK.txt \
    device/htc/runnymede/dsp/soundimage/Sound_SRS_V_HP.txt:system/etc/soundimage/Sound_SRS_V_HP.txt \
    device/htc/runnymede/dsp/soundimage/Sound_SRS_V_SPK.txt:system/etc/soundimage/Sound_SRS_V_SPK.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Treble_Booster.txt:system/etc/soundimage/Sound_Treble_Booster.txt \
    device/htc/runnymede/dsp/soundimage/Sound_Vocal_Booster.txt:system/etc/soundimage/Sound_Vocal_Booster.txt

# Keylayouts and keychars
PRODUCT_COPY_FILES += \
    device/htc/runnymede/keylayout/keychars/atmel-touchscreen.kcm:system/usr/keychars/atmel-touchscreen.kcm \
    device/htc/runnymede/keylayout/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
    device/htc/runnymede/keylayout/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
    device/htc/runnymede/keylayout/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
    device/htc/runnymede/keylayout/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm \
    device/htc/runnymede/keylayout/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/runnymede/keylayout/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/runnymede/keylayout/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/htc/runnymede/keylayout/keylayout/runnymede-keypad.kl:system/usr/keylayout/runnymede-keypad.kl \
    device/htc/runnymede/keylayout/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
    device/htc/runnymede/keylayout/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
    device/htc/runnymede/keylayout/keylayout/Generic.kl:system/usr/keylayout/Generic.kl
	
# Input device config
PRODUCT_COPY_FILES += \
    device/htc/runnymede/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    device/htc/runnymede/idc/projector_input.idc:system/usr/idc/projector_input.idc \
    device/htc/runnymede/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    device/htc/runnymede/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/htc/runnymede/idc/qwerty2.idc:system/usr/idc/qwerty2.idc

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/htc/runnymede/prebuilt/kernel/kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Kernel modules
PRODUCT_COPY_FILES += \
    device/htc/runnymede/prebuilt/kernel/bcmdhd.ko:system/lib/modules/bcmdhd.ko \
    device/htc/runnymede/prebuilt/kernel/cpaccess.ko:system/lib/modules/cpaccess.ko \
    device/htc/runnymede/prebuilt/kernel/dma_test.ko:system/lib/modules/dma_test.ko \
    device/htc/runnymede/prebuilt/kernel/kineto_gan.ko:system/lib/modules/kineto_gan.ko \
    device/htc/runnymede/prebuilt/kernel/reset_modem.ko:system/lib/modules/reset_modem.ko \
    device/htc/runnymede/prebuilt/kernel/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko
endif

# Copy bcm4329 firmware
#$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)

# BCM4329 firmware
#PRODUCT_COPY_FILES += \
#    device/htc/runnymede/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd

# Filesystem management tools
PRODUCT_PACKAGES += \
   make_ext4fs \
   FileManager \
   e2fsck \
   setup_fs

# Build extra non-CM packages
PRODUCT_PACKAGES += \
   FileManager \
   Torch
   
# GPS / BT / Lights / Sensors
PRODUCT_PACKAGES += \
    libbt-vendor \
    lights.msm7x30

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    ro.com.google.locationfeatures=1 \
    ro.com.google.gmsversion=2.3_r3 \
    persist.sys.scrollingcache=3
	
# Override /proc/sys/vm/dirty_ratio on UMS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vold.umsdirtyratio=20

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Fix bad lunch inheritance
PRODUCT_NAME := cfx_runnymede

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_LOCALES += en_US

# call the proprietary setup
$(call inherit-product, vendor/htc/runnymede/runnymede-vendor.mk)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
