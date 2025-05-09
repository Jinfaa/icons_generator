
# Swift Icon Generator for iOS and Android

This Swift script automates the generation of application icons for both iOS and Android platforms using a single source image. It also supports the creation of alternative icons for iOS and updates the `Info.plist` file accordingly.

## Features

* 📱 **Android Icon Generation**

  * Standard launcher icons for all screen densities: `mdpi`, `hdpi`, `xhdpi`, `xxhdpi`, `xxxhdpi`
  * Round icons and adaptive icons (foreground only)
  * Play Store icon (512x512)

* 🍏 **iOS Icon Generation**

  * Creates all required icons for iPhone, iPad, Spotlight, Settings, Notification, and App Store
  * Automatically generates `Contents.json` for use with Xcode asset catalogs

* 🎨 **Alternative Icons Support**

  * Processes PNGs from `assets/app_icons/alts/`
  * Generates 2x (120x120) and 3x (180x180) icons
  * Updates `ios/Runner/Info.plist` to register alternative icons

* 🛠 **Automation and Utility Features**

  * Verifies that the source image file exists
  * Logs a warning if the source image appears to be smaller than recommended
  * Creates necessary directories before saving output
  * Uses `sips` for high-quality resizing

## Requirements

* macOS with `sips` installed (default on macOS)
* Swift (run via `swift icon_generator.swift`)

## Usage

1. Place your source icon at:

   ```
   assets/app_icons/logo.png
   ```

   Ensure it is at least **1024x1024** pixels for best results.

2. Optional: Place alternative icons (1024x1024 PNG) in:

   ```
   assets/app_icons/alts/
   ```

3. Run the script:

   ```bash
   swift icon_generator.swift
   ```

## Output

* **Android icons**: `android/app/src/main/res/mipmap-*`
* **iOS icons**: `ios/Runner/Assets.xcassets/AppIcon.appiconset/`
* **Alternative icons**: `ios/Runner/App Icons/`

## Notes

* The script performs a basic check to ensure the source image exists.
* It also attempts to detect if the image might be too small by checking for common resolutions like 1024 or 2048 in the `sips` output, but this is not a strict validation.
* It creates any missing directories automatically.
* Uses `sips` for resizing to preserve transparency and image quality.

## License

This script is released under the MIT License.
