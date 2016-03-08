$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

PRODUCT_NAME := odrc2
PRODUCT_DEVICE := odrc2
PRODUCT_BRAND := AndroidTV
PRODUCT_MODEL := AndroidTV on odrc2
PRODUCT_MANUFACTURER := aml

PRODUCT_AAPT_CONFIG := normal tvdpi hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

include frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk

PRODUCT_PACKAGES += \
    libGLES_mali \
    egl.cfg \
    gralloc.$(TARGET_PRODUCT) \
    hwcomposer.$(TARGET_PRODUCT) \
    audio.primary.$(TARGET_PRODUCT) \
    TvSettings

PRODUCT_COPY_FILES := \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/av/media/libeffects/data/audio_effects.conf:system/etc/audio_effects.conf \
    device/generic/goldfish/camera/media_profiles.xml:system/etc/media_profiles.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/odrc2_core_hardware.xml:system/etc/permissions/odrc2_core_hardware.xml \
    $(LOCAL_PATH)/init.odrc2.rc:root/init.odrc2.rc \
    $(LOCAL_PATH)/ueventd.odrc2.rc:root/ueventd.odrc2.rc \
    $(LOCAL_PATH)/fstab.odrc2:root/fstab.odrc2 \
    $(LOCAL_PATH)/Generic.kl:system/usr/keylayout/Generic.kl \
    $(LOCAL_PATH)/set_display_mode.sh:system/bin/set_display_mode.sh \
    kernel/hardware/arm/gpu/mali/mali.ko:root/lib/modules/mali.ko \
    $(PRODUCT_COPY_FILES)

DEVICE_PACKAGE_OVERLAYS := device/aml/odrc2/overlay
PRODUCT_CHARACTERISTICS := tv
PRODUCT_LOCALES := en_US,ko_KR,ja_JP,zh_CN
