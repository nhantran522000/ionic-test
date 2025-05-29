# Ionic Test App - QA Testing Pipeline

This project includes an automated QA testing pipeline that builds downloadable test apps for both Android and iOS platforms.

## 🚀 Quick Start for QA Team

### Download Test Builds
1. Go to [GitHub Actions](../../actions)
2. Click on the latest "QA Testing Builds" workflow
3. Download artifacts from the bottom of the page
4. Follow the included installation instructions

### Available Builds
- **Android APK**: Ready for Android devices and emulators
- **iOS Simulator**: Ready for iOS Simulator on macOS

📖 **[Complete QA Testing Guide](QA_TESTING_GUIDE.md)**

## 🔧 Development

### Local Development
```bash
# Run on Android
npx cap run android --target="Pixel_7"

# Run on iOS  
npx cap run ios --target="2A3620DF-018F-42B6-9B4C-E6442DFCA15F"

# Build web assets
pnpm run build
```

### Triggering QA Builds
Builds are automatically triggered on:
- Push to `main`, `develop`, or `qa` branches
- Pull requests to `main` or `develop`

### Setup QA Pipeline
```bash
# Run the setup script
./setup-qa-testing.sh
```

## 📱 Features
- ✅ Automated Android APK builds with signing
- ✅ Automated iOS Simulator builds  
- ✅ QA-friendly downloadable artifacts
- ✅ Installation instructions included
- ✅ Version tracking and build information
- ✅ 30-day artifact retention

## 🔒 Configuration

### Required GitHub Secrets
- `KEYSTORE_FILE`: Base64 encoded Android keystore
- `KEYSTORE_PASSWORD`: Android keystore password
- `KEY_ALIAS`: Android key alias
- `KEY_PASSWORD`: Android key password

### Bundle Identifier
- **App ID**: `com.nhan.test.t34wtf43f.wfe2u3nf`
- **Consistent across**: iOS, Android, and Capacitor config

## 📋 Build Information
- **Version Format**: `1.0.{build_number}`
- **Platforms**: Android APK, iOS Simulator
- **Retention**: 30 days
- **Status**: All builds working ✅

## 🎯 For QA Team
- **Testing Guide**: [QA_TESTING_GUIDE.md](QA_TESTING_GUIDE.md)
- **Installation Help**: Included with each download
- **Support**: Check GitHub Actions logs or contact dev team

