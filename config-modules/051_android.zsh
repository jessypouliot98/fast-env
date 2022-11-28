export ANDROID_HOME=$HOME/Library/Android/sdk
RECORD_OUT_DIR="$HOME/Movies/Recordings"

if [ -d $ANDROID_HOME ]; then
  export PATH=$PATH:$ANDROID_HOME/emulator
  export PATH=$PATH:$ANDROID_HOME/tools
  export PATH=$PATH:$ANDROID_HOME/tools/bin
  export PATH=$PATH:$ANDROID_HOME/platform-tools
  
  # Aliases
  alias android:clean="echo Cleaning android project && cd android && ./gradlew clean && cd .."
  alias android:reload="echo Reloading app && adb shell input text \"RR\""
  alias android:open="echo Opening link && adb shell am start -a android.intent.action.VIEW -d"
  alias android:uninstall="echo Uninstalling apk && adb uninstall $1"
  alias android:record="adb shell screenrecord /sdcard/record.mp4"
  alias android:record:pull="adb pull /sdcard/record.mp4 $RECORD_OUT_DIR/android_recording.mp4 && adb shell rm /sdcard/record.mp4"
fi