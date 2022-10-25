if [ -d "~/Library/Developer/Xcode" ]; then
  alias ios:clean="echo Cleaning ios && rm -rf ~/Library/Developer/Xcode/DerivedData && cd ios && xcodebuild clean && cd .."
  alias ios:open="xcrun simctl openurl booted"
  alias ios:list="xcrun simctl list devices"
  alias ios:record="xcrun simctl io booted recordVideo ~/Pictures/ios_recording.mp4"
fi