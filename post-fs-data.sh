#!/system/bin/sh
MODDIR=${0%/*}

# Fix battery capacity
mkdir -p /odm/etc/power_profile
mount --bind $MODDIR/odm/etc/power_profile/power_profile.xml /odm/etc/power_profile/power_profile.xml
chcon -R u:object_r:vendor_configs_file:s0 /odm/etc/power_profile

# Dolby Vision
mount --bind $MODDIR/my_product/etc/dolby_vision.cfg /my_product/etc/dolby_vision.cfg

# Refresh Rate
mount --bind $MODDIR/my_product/etc/oplus_vrr_config.json /my_product/etc/oplus_vrr_config.json
mount --bind $MODDIR/my_product/etc/refresh_rate_config.xml /my_product/etc/refresh_rate_config.xml
mount --bind $MODDIR/my_product/etc/sys_dynamic_frame_config.xml /my_product/etc/sys_dynamic_frame_config.xml

# Permissions
mount --bind $MODDIR/my_product/etc/permissions/oplus.feature.android.xml /my_product/etc/permissions/oplus.feature.android.xml
mount --bind $MODDIR/my_product/etc/permissions/oplus.features.connectivity.xml /my_product/etc/permissions/oplus.features.connectivity.xml
mount --bind $MODDIR/my_product/etc/permissions/oplus.product.display_features.xml /my_product/etc/permissions/oplus.product.display_features.xml
mount --bind $MODDIR/my_product/etc/permissions/oplus.product.feature_multimedia_unique.xml /my_product/etc/permissions/oplus.product.feature_multimedia_unique.xml

# Display stuff
mkdir -p /my_product/vendor/etc
mount --bind $MODDIR/my_product/vendor/etc /my_product/vendor/etc
chcon -R u:object_r:vendor_configs_file:s0 /my_product/vendor/etc
