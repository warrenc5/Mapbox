#!/bin/bash -x
pgrep -aif 'adb logcat'
RET=$?
echo $RET
if [ $RET -ne 0 ] ; then
adb logcat -s System.err ComponentInfo{biz.mofokom.app.TestMapBox/biz.mofokom.app.TestMapBox.MainActivity} ComponentInfo chromium XWalkCordovaUiClient XWalkLib OpenGLRenderer XWalkWebViewEngine SystemWebChromeClient CordovaWebViewImpl & 
fi
