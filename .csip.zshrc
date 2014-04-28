BASE=~/adt-bundle-linux-x86_64-20131030/
ANDROID_SDK=$BASE/sdk/
export ANDROID_SDK

ANDROID_NDK=~/android-ndk-r9d/
export ANDROID_NDK

JAVA_HOME=~/jdk1.7.0_51/
export JAVA_HOME

PATH=$PATH:$JDK/bin/:$BASE/eclipse/:$ANDROID_SDK/tools:$ANDROID_SDK/platform-tools/:$ANDROID_NDK
export PATH

csip=~/src/CSipSimple-trunk/CSipSimple/
export csip

pjsip=$csip/jni/pjsip/sources/
export pjsip

pjmedia=$pjsip/pjmedia/src/pjmedia
export pjmedia

pjnath=$pjsip/pjnath/src/pjnath
export pjnath

pjlib=$pjsip/pjlib/src/pj
export pjlib
