#!/bin/bash -x
#npm install -g cordova@8.1.2
#find ~/ -name cordova-plugin-mapbox -exec rm -rf {} \;
cd `dirname $0`/..
DIR=`pwd -P`
cd ..
pwd
rm -rf test
cordova create test biz.mofokom.app.TestMapBox TestMapBox
cd test
cp $DIR/.env .
#ln -sf $DIR/demo/index.html www/index.html
cp $DIR/demo/index.html www/index.html
#cordova platform remove android
#cordova plugin remove cordova-plugin-crosswalk-webview 
#cordova plugin remove cordova-plugin-mapbox
#cordova plugin remove cordova-android-support-gradle-release 
#cordova plugin add cordova-android-support-gradle-release --nofetch
#cordova plugin add --nofetch cordova-plugin-crosswalk-webview --variable XWALK_VERSION="23+" --variable XWALK_MULTIPLEAP="true" --variable XWALK_LITEVERSION="xwalk_core_library_canary:17+"
cordova platform add android
cordova plugin add --nofetch --noregistry --link $DIR --variable ACCESS_TOKEN="pk.eyJ1Ijoid2FycmVuYzUiLCJhIjoiY2lqNWJyZGdwMDA1b3VkbHZxbHdtcWh6bCJ9.q_fttPToEFTe6tnFFC2K8g"
npm i
npm i -S ../Mapbox/


. .env
cordova build

#emulator @mapbox -debug init -logcat '*:v'
#emulator @mapbox -logcat 'chromium XWalkCordovaUiClient XWalkLib OpenGLRenderer XWalkWebViewEngine SystemWebChromeClient CordovaWebViewImpl' &
#cordova run --android  --emulator --target mapbox
cordova run --android  

#fail when java file not found in source set
cordova build android -- --gradleArg=--rerun-tasks
exit 1
