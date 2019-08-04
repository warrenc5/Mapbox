cp Mapbox/demo/index.html test/www/index.html
cd test
cordova build && adb install -r /home/code/mapbox/test/platforms/android/app/build/outputs/apk/debug/app-debug.apk
