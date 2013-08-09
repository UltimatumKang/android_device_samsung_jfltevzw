# name
PRODUCT_RELEASE_NAME := VZWGS4

# device
$(call inherit-product-if-exists, device/samsung/jfltevzw/full_jfltevzw.mk)

# Inherit some common UKG stuff.
$(call inherit-product, vendor/ukg/config/common_cdma.mk)

# phone
$(call inherit-product, vendor/ukg/config/common_phone.mk)


# overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=573038 \
    PRODUCT_NAME=jfltevzw \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="jfltevzw-user 4.2.2 JDQ39 573038 release-keys" \
    BUILD_FINGERPRINT="samsung/jfltevzw:4.2.2/JDQ39/573038:user/release-keys"
	
# products
PRODUCT_DEVICE := jfltevzw
PRODUCT_BRAND := Samsung
PRODUCT_NAME := ukg_jfltevzw
PRODUCT_MODEL := Samsung Galaxy S 4
PRODUCT_MANUFACTURER := Samsung
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=ukg.jfltevzw.$(shell date +%m%d%y).$(shell date +%H%M%S)

# hybrid
PRODUCT_COPY_FILES +=  \
    vendor/ukg/prebuilt/hybrid_xhdpi_no_nav.conf:system/etc/beerbong/properties.conf \
	vendor/ukg/prebuilt/bootanimation/bootanimation_1280_768.zip:system/media/bootanimation.zip
