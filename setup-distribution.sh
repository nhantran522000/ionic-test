#!/bin/bash

# GitHub Secrets Setup Helper Script
# Run this script to help set up your GitHub repository secrets for app distribution

echo "🚀 GitHub Secrets Setup for App Distribution"
echo "=============================================="
echo ""

REPO_URL="https://github.com/nhantran522000/ionic-test"
SECRETS_URL="$REPO_URL/settings/secrets/actions"

echo "📱 Required GitHub Secrets for iOS App Store:"
echo "---------------------------------------------"
echo "1. APPSTORE_ISSUER_ID          - Your App Store Connect API Issuer ID"
echo "2. APPSTORE_API_KEY_ID          - Your App Store Connect API Key ID"  
echo "3. APPSTORE_API_PRIVATE_KEY     - Your App Store Connect API Private Key (.p8 file content)"
echo "4. IOS_DISTRIBUTION_CERTIFICATE_P12 - Base64 encoded .p12 distribution certificate"
echo "5. IOS_DISTRIBUTION_CERTIFICATE_PASSWORD - Password for the .p12 certificate"
echo ""

echo "🤖 Required GitHub Secrets for Google Play Store:"
echo "------------------------------------------------"
echo "6. GOOGLE_PLAY_SERVICE_ACCOUNT_JSON - Full JSON content of service account key"
echo ""

echo "🔑 Existing Secrets (for Android APK signing):"
echo "---------------------------------------------"
echo "✅ KEYSTORE_FILE              - Already configured"
echo "✅ KEYSTORE_PASSWORD          - Already configured"  
echo "✅ KEY_ALIAS                  - Already configured"
echo "✅ KEY_PASSWORD               - Already configured"
echo ""

echo "🔧 To add these secrets:"
echo "1. Go to: $SECRETS_URL"
echo "2. Click 'New repository secret'"
echo "3. Add each secret with the exact name shown above"
echo ""

echo "📖 For detailed setup instructions, see: DISTRIBUTION_SETUP.md"
echo ""

echo "🏗️  Bundle ID for both platforms: com.nhan.test.t34wtf43f.wfe2u3nf"
echo ""

echo "✨ Once secrets are configured, push to main branch to trigger distribution builds!"

# Helper functions for common tasks
echo ""
echo "🛠️  Helper Commands:"
echo "-------------------"
echo ""

echo "📄 To encode your .p12 certificate for GitHub secrets:"
echo "base64 -i /path/to/your/certificate.p12 | pbcopy"
echo ""

echo "📄 To format your service account JSON for GitHub secrets:"
echo "cat /path/to/your/service-account.json | jq -c | pbcopy"
echo ""

echo "🔍 To verify your Android bundle after build:"
echo "cd android && ./gradlew bundleRelease && echo 'AAB created at: app/build/outputs/bundle/release/app-release.aab'"
echo ""

echo "🔍 To verify your iOS archive after build:"
echo "cd ios && xcodebuild -workspace App/App.xcworkspace -scheme App -configuration Release -destination 'generic/platform=iOS' -archivePath App.xcarchive archive"
echo ""
