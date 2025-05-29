# App Store Distribution Setup Guide

## 📱 iOS App Store Distribution

### Prerequisites

1. **Apple Developer Account** ($99/year)
   - Sign up at: https://developer.apple.com/programs/
   - Complete enrollment process

### Required GitHub Secrets for iOS

#### 1. App Store Connect API

```
APPSTORE_ISSUER_ID=your-issuer-id
APPSTORE_API_KEY_ID=your-api-key-id
APPSTORE_API_PRIVATE_KEY=-----BEGIN PRIVATE KEY-----
...your private key content...
-----END PRIVATE KEY-----
```

#### 2. Code Signing Certificates

```
IOS_DISTRIBUTION_CERTIFICATE_P12=base64-encoded-p12-file
IOS_DISTRIBUTION_CERTIFICATE_PASSWORD=your-certificate-password
```

### Setup Steps for iOS:

1. **Create App Store Connect API Key**:

   - Go to App Store Connect → Users and Access → Keys
   - Create new API Key with "Developer" role
   - Download the .p8 file and note the Key ID and Issuer ID

2. **Create Distribution Certificate**:

   - Use Xcode or Keychain Access to create a Certificate Signing Request
   - Go to Apple Developer Portal → Certificates → Create new Distribution Certificate
   - Download and install the certificate
   - Export as .p12 file with password

3. **Create App in App Store Connect**:
   - Go to App Store Connect → My Apps → + (New App)
   - Use bundle ID: `com.nhan.test.t34wtf43f.wfe2u3nf`
   - Fill in app metadata, screenshots, etc.

## 🤖 Google Play Store Distribution

### Prerequisites

1. **Google Play Console Account** ($25 one-time fee)
   - Sign up at: https://play.google.com/console/
   - Complete registration and verification

### Required GitHub Secrets for Android

```
GOOGLE_PLAY_SERVICE_ACCOUNT_JSON={
  "type": "service_account",
  "project_id": "your-project-id",
  "private_key_id": "your-private-key-id",
  "private_key": "-----BEGIN PRIVATE KEY-----\n...\n-----END PRIVATE KEY-----\n",
  "client_email": "your-service-account@your-project.iam.gserviceaccount.com",
  "client_id": "your-client-id",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token"
}
```

### Setup Steps for Android:

1. **Create App in Google Play Console**:

   - Go to Play Console → Create app
   - Use package name: `com.nhan.test.t34wtf43f.wfe2u3nf`
   - Complete app details and content rating

2. **Create Service Account**:

   - Go to Google Cloud Console for your project
   - Create service account with Play Developer API access
   - Download JSON key file
   - Grant necessary permissions in Play Console

3. **Upload Initial Release**:
   - Create internal testing track
   - Upload your first AAB file manually
   - Complete store listing requirements

## 🚀 Deployment Tracks

### iOS TestFlight

- Automatic upload to TestFlight for beta testing
- Can distribute to internal testers immediately
- External testers require App Store Review

### Google Play Tracks

- **Internal**: Up to 100 testers, no review required
- **Alpha/Beta**: Larger testing groups, limited review
- **Production**: Full store release, complete review

## 🚀 Progress Summary

### ✅ Completed:

1. **iOS Simulator Build**: Fixed and verified working
2. **Android APK Build**: Fixed and verified working
3. **Android AAB Build**: Fixed version code issue - now working
4. **Bundle ID Consistency**: All platforms use `com.nhan.test.t34wtf43f.wfe2u3nf`
5. **GitHub Actions CI/CD**: Three-job workflow configured
6. **iOS Export Configuration**: ExportOptions.plist created for App Store
7. **Version Configuration**: Added versionCode and versionName to Android build
8. **Documentation**: Complete setup guides created

### ⏳ Pending:

1. **Developer Account Registration**: Apple ($99) + Google ($25)
2. **Certificate Generation**: iOS Distribution + Android Keystore
3. **GitHub Secrets Configuration**: 6 total secrets needed
4. **Store Listing Setup**: Metadata, screenshots, descriptions
5. **Production Testing**: End-to-end distribution verification

## 📝 Next Steps

1. Set up both developer accounts
2. Configure GitHub repository secrets
3. Test with internal/beta tracks first
4. Complete store listings and metadata
5. Submit for review and release

## 🔧 Testing the Setup

Run these commands to test builds locally:

### iOS Production Build:

```bash
cd ios
xcodebuild -workspace App/App.xcworkspace \
  -scheme App \
  -configuration Release \
  -destination 'generic/platform=iOS' \
  -archivePath App.xcarchive \
  archive
```

### Android Production Build:

```bash
cd android
./gradlew bundleRelease
```
