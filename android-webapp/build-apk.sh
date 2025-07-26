#!/bin/bash

# Build script for Hypertrophy Forge Android Web App
# This script builds a debug APK that can be installed for testing

echo "Building Hypertrophy Forge Android Web App..."

# Navigate to project directory
cd "$(dirname "$0")"

# Make gradlew executable (in case it isn't)
chmod +x gradlew

# Clean previous builds
echo "Cleaning previous builds..."
./gradlew clean

# Build debug APK
echo "Building debug APK..."
./gradlew assembleDebug

# Check if build was successful
if [ -f "app/build/outputs/apk/debug/app-debug.apk" ]; then
    echo "✅ Build successful!"
    echo "APK location: app/build/outputs/apk/debug/app-debug.apk"
    echo ""
    echo "To install on your Android device:"
    echo "1. Enable 'Unknown Sources' in Android settings"
    echo "2. Transfer the APK to your device"
    echo "3. Tap the APK file to install"
else
    echo "❌ Build failed. Check the error messages above."
    exit 1
fi
