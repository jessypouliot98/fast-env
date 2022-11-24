XCODE_DIR="$HOME/Library/Developer/Xcode"
RECORD_OUT_DIR="$HOME/Movies/Recordings"

if [ -d $XCODE_DIR ]; then
  alias ios:clean="echo Cleaning ios && rm -rf $XCODE_DIR/DerivedData && cd ios && xcodebuild clean && cd .."
  alias ios:open="xcrun simctl openurl booted"
  alias ios:list="xcrun simctl list devices"
  alias ios:record="xcrun simctl io booted recordVideo $RECORD_OUT_DIR/ios_recording.mp4"
fi