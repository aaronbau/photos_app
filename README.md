# photos_app

### **Flutter & Dart Versions**

- **Flutter**: 3.24.0
- **Dart**: 3.5.0

### **Running Flutter Project**

#### **Android and iOS:**

- To run the Flutter app on an Android device or emulator in debug mode:

  ```bash
  flutter run -d <device-id>
  ```

- To run in release mode:

  ```bash
  flutter run --release -d <device-id>
  ```

### **Building Flutter Project**

#### **Android:**

- To build an APK for Android:

  ```bash
  flutter build apk --release
  ```

- To build an Android App Bundle (AAB) for release:

  ```bash
  flutter build appbundle --release
  ```

#### **iOS:**

- To build the Flutter app for iOS (requires a macOS machine):

  ```bash
  flutter build ios --release
  ```

- To build an IPA file for iOS:

  ```bash
  flutter build ipa --release
  ```

### **Additional Notes:**

- Ensure you have the necessary permissions and certificates set up in Xcode for iOS builds.
- Use the `--debug` flag instead of `--release` if you need to build in debug mode.
- For device ID, use `flutter devices` to list all connected devices and simulators/emulators.

### **FVM (Flutter Version Manager)**

This project uses FVM (Flutter Version Manager) to manage Flutter versions. Using FVM is optional but encouraged for managing Flutter versions more effectively. If you choose to use FVM, prefix commands with `fvm`, for example:

- **Run the project:**

  ```bash
  fvm flutter run
  ```
