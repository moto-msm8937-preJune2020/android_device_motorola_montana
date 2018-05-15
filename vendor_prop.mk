#
# vendor.prop for montana
#

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.HAL3.enabled=0 \
    persist.camera.eis.enable=0

# Fingerprint
PRODUCT_PROPERTY_OVERRIDES += \
    persist.qfp=false

# IMS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.ims.volte=true \
    ro.config.hw_volte_on=true

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libargs=-d /dev/smd0

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.sensors=montana
