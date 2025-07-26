# Hypertrophy Forge Android Web App

This is a native Android web application that wraps your existing website (https://shauryalifts.great-site.net/) into a mobile app. The app automatically reflects any changes you make to your website without requiring app updates.

## Features

- **Full-screen WebView** - Your website loads in a native Android app
- **Pull-to-refresh** - Users can refresh content by pulling down
- **Offline handling** - Shows error message when no internet connection
- **Progress indicators** - Visual feedback during page loading
- **Back button support** - Proper navigation handling
- **Network connectivity checks** - Validates internet connection before loading

## Requirements

- Android Studio (latest version recommended)
- Android SDK 34
- Java 8 or higher
- Internet permission (already configured)

## Building the App

### Method 1: Using Android Studio (Recommended)

1. **Install Android Studio** from https://developer.android.com/studio
2. **Open Android Studio**
3. **Import Project**: File → Open → Select the `android-webapp` folder
4. **Install Android SDK** when prompted (Android Studio will guide you)
5. **Wait for Gradle sync** to complete
6. **Build APK**: Build → Build Bundle(s) / APK(s) → Build APK(s)
7. **Find APK**: The APK will be in `app/build/outputs/apk/debug/app-debug.apk`

### Method 2: Using Command Line (Requires Android SDK)

1. **Install Android SDK**:
   ```bash
   # On Ubuntu/Debian
   sudo apt update
   sudo apt install android-sdk
   
   # On macOS with Homebrew
   brew install android-sdk
   ```

2. **Set environment variables**:
   ```bash
   export ANDROID_HOME=/usr/lib/android-sdk  # Adjust path as needed
   export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
   ```

3. **Navigate to project directory**:
   ```bash
   cd android-webapp
   ```

4. **Update SDK path in local.properties**:
   ```bash
   echo "sdk.dir=$ANDROID_HOME" > local.properties
   ```

5. **Build debug APK**:
   ```bash
   ./gradlew assembleDebug
   ```

## Installation

### Debug APK (for testing)
1. Enable "Unknown Sources" in Android settings
2. Transfer `app-debug.apk` to your Android device
3. Tap the APK file to install

### Release APK (for distribution)
1. Configure signing in `app/build.gradle`
2. Build release APK: `./gradlew assembleRelease`
3. The signed APK will be in `app/build/outputs/apk/release/app-release.apk`

## Customization

### Changing Website URL
Edit `MainActivity.java` and change the `WEBSITE_URL` constant:
```java
private static final String WEBSITE_URL = "https://your-new-website.com/";
```

### App Name and Icon
- **App Name**: Edit `app/src/main/res/values/strings.xml`
- **App Icon**: Replace files in `app/src/main/res/mipmap-*` directories

### Colors
Edit `app/src/main/res/values/colors.xml` to match your brand colors.

## Distribution Options

1. **Direct APK sharing** - Send APK file directly to users
2. **Google Play Store** - Upload to Play Store for wider distribution
3. **Firebase App Distribution** - Beta testing through Firebase

## Troubleshooting

### Build Issues
- **SDK not found**: Install Android SDK and update `local.properties`
- **Java issues**: Ensure Java 8+ is installed
- **Permission issues**: Run `chmod +x gradlew` on Unix systems

### WebView Issues
- Check if website URL is accessible
- Verify SSL certificate (HTTPS required for modern Android)
- Test on different Android versions

### Performance
- The app performance depends on your website's mobile optimization
- Consider implementing PWA features on your website for better experience

## Website Updates

Any changes you make to your website at https://shauryalifts.great-site.net/ will automatically appear in the app when users refresh or reopen it. No app updates are required.

## Quick Start for Android Studio Users

1. Download and install Android Studio
2. Open Android Studio
3. Click "Open an Existing Project"
4. Select the `android-webapp` folder
5. Click "Sync Project with Gradle Files"
6. Click "Build" → "Build APK"
7. Find your APK in `app/build/outputs/apk/debug/`

## Support

For issues related to the Android app structure, refer to Android documentation. For website-specific issues, check your website's hosting and configuration.

## Note on Environment Setup

This project is designed to work with Android Studio. The build environment requires the Android SDK which is automatically handled by Android Studio. If you're using command line tools, ensure you have the Android SDK properly installed and configured.
