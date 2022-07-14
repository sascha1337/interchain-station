# Chrome Extension build script

# Color constants
COLOR_NONE='\033[0m'
COLOR_WHITE='\033[1;37m'
COLOR_GREEN='\033[0;32m'
COLOR_RED='\033[0;31m'

echo -e "${COLOR_WHITE}Building Chrome Extension...${COLOR_NONE}"

if [ ! -f pubspec.yaml ]
then
  echo -e "${COLOR_RED}Build script not called from project root directory. Aborting.${COLOR_NONE}"
  exit 1
fi

if [ -d web/ ]
then
  echo "Found temporary 'web/' build configuration directory."
  echo "Removing temporary 'web/' build configuration directory..."
  rm -r web/
  echo "Temporary 'web/' build configuration directory removed."
fi

echo "Copying Chrome Extension configuration to web/ build configuration directory."
cp -r webcx/ web/
echo "Flutter web build configuration ready."

echo -e "${COLOR_WHITE}Running Flutter web (Chrome Extension) build...${COLOR_NONE}"
flutter build web --web-renderer html --csp --target lib/main_chrome_extension.dart
if [ ! -d build/web/ ]
then
  echo -e "${COLOR_RED}Flutter build failed. Aborting.${COLOR_NONE}"
  exit 1
else
  echo -e "${COLOR_GREEN}Flutter web build complete.${COLOR_NONE}"
fi

if [ -d build/webcx/ ]
then
  echo "Found existing Chrome Extension build directory 'build/webcx/'."
  echo "Removing existing Chrome Extension build directory 'build/webcx/'..."
  rm -r build/webcx/
  echo "Existing Chrome Extension build directory 'build/webcx/' removed."
fi

echo "Copying Chrome Extension build from 'build/web/' to 'build/webcx/'..."
cp -r build/web/ build/webcx/
echo "Chrome Extension build exported to 'build/webcx/'."

echo -e "${COLOR_GREEN}Chrome Extension build complete.${COLOR_NONE}"

echo "To run the Chrome extension, launch the Chrome web browser,
  head to 'chrome://extensions', enable 'Developer mode',
  click 'Load unpacked', and select the 'build/webcx/' directory."

echo "Once the extension is added to Chrome, simply click the
  refresh button to update the Chrome extension to the latest
  version of the 'build/webcx/' directory."

echo "To launch the extension, click on it from the Chrome browser extension menu."
