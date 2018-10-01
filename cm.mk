# Release name
PRODUCT_RELEASE_NAME := platy

LOCAL_PATH := device/zte/platy

# Inherit from the common Open Source product configuration
#$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
 
include $(call all-subdir-makefiles)

# Charger
PRODUCT_PACKAGES += charger charger_res_images

# Release name
PRODUCT_RELEASE_NAME := platy

TARGET_SCREEN_HEIGHT := 400
TARGET_SCREEN_WIDTH := 400

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := platy
PRODUCT_NAME := lineage_platy
PRODUCT_BRAND := zte
PRODUCT_MODEL := Quartz
PRODUCT_MANUFACTURER := ZTE

# enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.build.product=platy \
    ro.product.device=platy
