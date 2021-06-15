#!/bin/env bash
for i in /sys/class/hwmon/hwmon*/temp*_input; do 
    if [ "$(<$(dirname $i)/name): $(cat ${i%_*}_label 2>/dev/null || echo $(basename ${i%_*}))" = "coretemp: Package id 0" ]; then
        export HWMON_PATH="$i"
    fi
done
pkill redshift-gtk; pkill redshift; redshift-gtk &
pkill polybar; polybar -r i3-nord &
spotify &