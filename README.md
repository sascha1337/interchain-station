# Althea

The interchain station.

![photo_2022-07-14 13 06 21](https://user-images.githubusercontent.com/12372821/178903542-0593ca34-8274-4095-b681-38aa4e44e88c.jpeg)

## About

Althea is a community-built, permissionless, multi-platform DeFi service app
for the Cosmos ecosystem.

Althea is named by prepending the prefix "al" (meaning high/tall/grand)
to the name Thea, the Greek goddess of light, brilliance and intrinsic value.

As such, Althea offers wallet services such as IBC transfers, delegation to
validators, governance voting, etc. Althea also plans to offer services such
as token swapping and liquidity pooling, as well as social features such
as chain, token and validator profiles.

The Althea app currently supports the following builds, all generated from
the same Flutter/Dart codebase for maximal reuse of logic and responsive widgets:
- Web App (works on all modern browsers, e.g. Chrome, Firefox, Safari, Opera, Brave, etc.)
- Chrome Extension (works on Chrome and web browsers with Chrome extension support)
- Android Mobile App (works on Android mobile devices, e.g. Pixel, Galaxy Tab, etc.)
- iOS Mobile App (works on iOS mobile devices, e.g. iPhone, iPad, etc.)

All builds are intended to be as adaptive and responsive as possible, 
e.g. to devices, OSs, screen sizes, orientations, etc.

## Builds
Install the Flutter SDK from `https://docs.flutter.dev/get-started/install`.
You may use the Android Studio IDE which comes with the Android SDK, or 
install the Android SDK separately.

### Web App
- From the root directory of the project, run `sh ./scripts/build_webapp.sh`.
- From the Android Studio UI, select a web browser and click on the play/run button.

### Chrome Extension
- From the root directory of the project, run `sh ./scripts/build_webcx.sh`.
- In Chrome, head to `chrome://extensions/`, load/refresh the app, and run the extension.

### Android Mobile App
If not already done, install the Android SDK. Then, open (or create) the file 
located under `android/local.properties` and set the paths to your Android 
and Flutter SDKs in the file. The file content should look like this.
```
sdk.dir=/path/to/android/sdk
flutter.sdk=/path/to/flutter/sdk
```
To run the Android mobile app, select an Android device from the dropdown
and press the play/run button from the Android Studio UI.

### iOS Mobile App
To run the iOS mobile app, select an iOS device from the dropdown
and press the play/run button from the Android Studio UI.

## Disclaimer
ALTHEA IS PROVIDED “AS IS”, AT YOUR OWN RISK, AND WITHOUT WARRANTIES OF ANY
KIND. No developer or entity involved in creating the Althea app or smart
contracts will be liable for any claims or damages whatsoever associated
with your use, inability to use, or your interaction with other users of
Althea, including any direct, indirect, incidental, special, exemplary,
punitive or consequential damages, or loss of profits, cryptocurrencies,
tokens, or anything else of value.
