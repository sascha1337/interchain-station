# Web App build script

# Color constants
COLOR_NONE='\033[0m'
COLOR_WHITE='\033[1;37m'
COLOR_GREEN='\033[0;32m'
COLOR_RED='\033[0;31m'

echo -e "${COLOR_WHITE}Building Web App...${COLOR_NONE}"

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

echo "Copying Web App configuration to web/ build configuration directory."
cp -r webapp/ web/
echo "Flutter web build configuration ready."

echo -e "${COLOR_WHITE}Running Flutter web (Web App) build...${COLOR_NONE}"
flutter build web --target lib/main_web_app.dart
if [ ! -d build/web/ ]
then
  echo -e "${COLOR_RED}Flutter build failed. Aborting.${COLOR_NONE}"
  exit 1
else
  echo -e "${COLOR_GREEN}Flutter web build complete.${COLOR_NONE}"
fi

if [ -d web/ ]
then
  echo "Found existing Web App build directory 'build/webapp/'."
  echo "Removing existing Web App build directory 'build/webapp/'..."
  rm -r build/webapp/
  echo "Existing Web App build directory 'build/webapp/' removed."
fi

echo "Copying Web App build from 'build/web/' to 'build/webapp/'..."
cp -r build/web/ build/webapp/
echo "Web App build exported to 'build/webapp/'."

echo -e "${COLOR_GREEN}Web App build complete.${COLOR_NONE}"

echo "To run the Web App in development mode, select a web browser
  (e.g. 'Chrome (web)') and the 'main_web_app.dart' entrypoint,
  and click on the Android Studio play/run button."
