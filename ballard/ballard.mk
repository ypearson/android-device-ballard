# Add in the product specific SDK add-on library to the system image
# as a package
PRODUCT_PACKAGES := \
    com.hiqes.android.utility_library

# Copy over the XML permissions file for the library to the system image
PRODUCT_COPY_FILES := \
    device/qcom/msm8916_64/android-device-ballard/ballard/frameworks/utility_library/com.hiqes.android.utility_library.xml:system/etc/permissions/com.hiqes.android.utility_library.xml \

# Name the SDK Add-on
PRODUCT_SDK_ADDON_NAME := utility_library

# The SDK has a manifest declaring what it comes with as well as a hardware
# definition which describes what the hardware looks like.  These must be
# copied as part of the SDK package, so specify them here.  Any custom skins
# can be done here as well.
PRODUCT_SDK_ADDON_COPY_FILES := \
    device/qcom/msm8916_64/android-device-ballard/ballard/manifest.ini:manifest.ini \
    device/qcom/msm8916_64/android-device-ballard/ballard/hardware.ini:hardware.ini

# Copy the jar file for the library and exposed APIs into the add-on
PRODUCT_SDK_ADDON_COPY_MODULES := \
    com.hiqes.android.utility_library:libs/utility_library.jar

# Pickup the rules for the exposed APIs.  The SDK generation uses this in
# order to only expose the specified APIs in the public jar file bundled in
# the SDK add-on.
PRODUCT_SDK_ADDON_STUB_DEFS := $(LOCAL_PATH)/utility_library_stub_defs

# Specify the name of the documentation to generate and put into the add-on
# package.  This MUST match the name definition in the library!
# PRODUCT_SDK_ADDON_DOC_MODULES := utility_library

$(call inherit-product, $(SRC_TARGET_DIR)/product/sdk_arm64.mk)

# The name of this add-on (for the build system)
# Use 'make PRODUCT-<PRODUCT_NAME>-sdk_addon' to build the add-on,

PRODUCT_NAME   := ballard
PRODUCT_DEVICE := msm8916_64
PRODUCT_BRAND  := Android
PRODUCT_MODEL  := MSM8916 for arm64

PRODUCT_CHARACTERISTICS := nosdcard

