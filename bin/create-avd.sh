#!/bin/bash -x

cd `dirname $0`
sudo /etc/init.d/virtualbox stop_vms

cd test 
android list targets
android create avd -t 7 --path avd -n mapbox
cordova run android  --emulator --target mapbox
#emulator @mapbox -debug init -logcat '*:v' -wipe-data

