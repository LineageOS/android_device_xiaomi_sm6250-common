#!/vendor/bin/sh
#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

sensors="sensor_temperature"

for f in $sensors
do
    if grep -q ^"$f"$ /mnt/vendor/persist/sensors/sensors_list.txt ; then
        # Cleanup sensor list
        sed -i '/^/d' /mnt/vendor/persist/sensors/sensors_list.txt
    fi
done
