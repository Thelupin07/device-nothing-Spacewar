#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Spacewar device
$(call inherit-product, device/nothing/Spacewar/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_Spacewar
PRODUCT_DEVICE := Spacewar
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A063
PRODUCT_MANUFACTURER := Nothing

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct=Spacewar \
    BuildDesc="Spacewar-user 12 SKQ1.211230.001 1666412462 release-keys" \
    BuildFingerprint="Nothing/Spacewar/Spacewar:12/SKQ1.211230.001/1666412462:user/release-keys"



# UDFPS support
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true



# Lunch banner maintainer variable
RISING_MAINTAINER="MRDOT"

# Chipset/Maintainer properties (ro.rising.chipset/ro.rising.maintainer) 
# Set RISING_MAINTAINER for version control 


RISING_MAINTAINER := MRDOT

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := false

# whether to ship aperture camera, default is false
PRODUCT_NO_CAMERA := false

# Wether to ship lawnchair launcher
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true 


# GMS build flags
# ship with GMS packages, replaces default AOSP packages with Google manufactured packages.
WITH_GMS := true

# ships core GMS components that are needed to run GMS environment
TARGET_CORE_GMS := true

# extra add-ons for core GMS builds
# List of add-ons
# PRODUCT_PACKAGES += \
#    Photos \
#    MarkupGoogle \
#    LatinIMEGooglePrebuilt \
#    PrebuiltDeskClockGoogle \
#    CalculatorGooglePrebuilt \
#    CalendarGooglePrebuilt \
#    Velvet
TARGET_CORE_GMS_EXTRAS := true/false

# Wether to ship pixel launcher and set it as default launcher
TARGET_DEFAULT_PIXEL_LAUNCHER := true 

# Wether to ship prebuilt Google Dialer and Messages
TARGET_INCLUDE_GOOGLE_DIALER := false
