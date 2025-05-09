#!/usr/bin/swift

import Foundation

// MARK: - Configuration

struct IconTarget {
    let size: Int
    let path: String
    // For iOS Contents.json
    let idiom: String?
    let scale: String?
    let role: String?
    let subtype: String?

    // Explicit initializer to handle optional parameters correctly
    init(size: Int, path: String, idiom: String?, scale: String?, role: String? = nil, subtype: String? = nil) {
        self.size = size
        self.path = path
        self.idiom = idiom
        self.scale = scale
        self.role = role
        self.subtype = subtype
    }
}

// Android Targets - расширенный список иконок для Android
let androidTargets: [IconTarget] = [
    // Standard launcher icons
    IconTarget(size: 48, path: "android/app/src/main/res/mipmap-mdpi/ic_launcher.png", idiom: nil, scale: nil),
    IconTarget(size: 72, path: "android/app/src/main/res/mipmap-hdpi/ic_launcher.png", idiom: nil, scale: nil),
    IconTarget(size: 96, path: "android/app/src/main/res/mipmap-xhdpi/ic_launcher.png", idiom: nil, scale: nil),
    IconTarget(size: 144, path: "android/app/src/main/res/mipmap-xxhdpi/ic_launcher.png", idiom: nil, scale: nil),
    IconTarget(size: 192, path: "android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png", idiom: nil, scale: nil),
    
    // Round launcher icons
    IconTarget(size: 48, path: "android/app/src/main/res/mipmap-mdpi/ic_launcher_round.png", idiom: nil, scale: nil),
    IconTarget(size: 72, path: "android/app/src/main/res/mipmap-hdpi/ic_launcher_round.png", idiom: nil, scale: nil),
    IconTarget(size: 96, path: "android/app/src/main/res/mipmap-xhdpi/ic_launcher_round.png", idiom: nil, scale: nil),
    IconTarget(size: 144, path: "android/app/src/main/res/mipmap-xxhdpi/ic_launcher_round.png", idiom: nil, scale: nil),
    IconTarget(size: 192, path: "android/app/src/main/res/mipmap-xxxhdpi/ic_launcher_round.png", idiom: nil, scale: nil),
    
    // Adaptive icon background and foreground (Android 8+)
    IconTarget(size: 108, path: "android/app/src/main/res/mipmap-mdpi/ic_launcher_foreground.png", idiom: nil, scale: nil),
    IconTarget(size: 162, path: "android/app/src/main/res/mipmap-hdpi/ic_launcher_foreground.png", idiom: nil, scale: nil),
    IconTarget(size: 216, path: "android/app/src/main/res/mipmap-xhdpi/ic_launcher_foreground.png", idiom: nil, scale: nil),
    IconTarget(size: 324, path: "android/app/src/main/res/mipmap-xxhdpi/ic_launcher_foreground.png", idiom: nil, scale: nil),
    IconTarget(size: 432, path: "android/app/src/main/res/mipmap-xxxhdpi/ic_launcher_foreground.png", idiom: nil, scale: nil),
    
    // Play Store icon
    IconTarget(size: 512, path: "android/app/src/main/play_store_512.png", idiom: nil, scale: nil),
]

// MARK: - iOS Targets
let iosAssetCatalogPath = "ios/Runner/Assets.xcassets/AppIcon.appiconset"
let iosTargets: [IconTarget] = [
    // iPhone Notification
    IconTarget(size: 40, path: "\(iosAssetCatalogPath)/Icon-App-20x20@2x.png", idiom: "iphone", scale: "2x"),
    IconTarget(size: 60, path: "\(iosAssetCatalogPath)/Icon-App-20x20@3x.png", idiom: "iphone", scale: "3x"),
    // iPhone Settings
    IconTarget(size: 58, path: "\(iosAssetCatalogPath)/Icon-App-29x29@2x.png", idiom: "iphone", scale: "2x"),
    IconTarget(size: 87, path: "\(iosAssetCatalogPath)/Icon-App-29x29@3x.png", idiom: "iphone", scale: "3x"),
    // iPhone Spotlight
    IconTarget(size: 80, path: "\(iosAssetCatalogPath)/Icon-App-40x40@2x.png", idiom: "iphone", scale: "2x"),
    IconTarget(size: 120, path: "\(iosAssetCatalogPath)/Icon-App-40x40@3x.png", idiom: "iphone", scale: "3x"),
    // iPhone App Icon
    IconTarget(size: 120, path: "\(iosAssetCatalogPath)/Icon-App-60x60@2x.png", idiom: "iphone", scale: "2x"),
    IconTarget(size: 180, path: "\(iosAssetCatalogPath)/Icon-App-60x60@3x.png", idiom: "iphone", scale: "3x"),
    // iPad Notifications
    IconTarget(size: 20, path: "\(iosAssetCatalogPath)/Icon-App-20x20@1x.png", idiom: "ipad", scale: "1x"),
    IconTarget(size: 40, path: "\(iosAssetCatalogPath)/Icon-App-20x20@2x-1.png", idiom: "ipad", scale: "2x"),
    // iPad Settings
    IconTarget(size: 29, path: "\(iosAssetCatalogPath)/Icon-App-29x29@1x.png", idiom: "ipad", scale: "1x"),
    IconTarget(size: 58, path: "\(iosAssetCatalogPath)/Icon-App-29x29@2x-1.png", idiom: "ipad", scale: "2x"),
    // iPad Spotlight
    IconTarget(size: 40, path: "\(iosAssetCatalogPath)/Icon-App-40x40@1x.png", idiom: "ipad", scale: "1x"),
    IconTarget(size: 80, path: "\(iosAssetCatalogPath)/Icon-App-40x40@2x-1.png", idiom: "ipad", scale: "2x"),
    // iPad App Icon
    IconTarget(size: 76, path: "\(iosAssetCatalogPath)/Icon-App-76x76@1x.png", idiom: "ipad", scale: "1x"),
    IconTarget(size: 152, path: "\(iosAssetCatalogPath)/Icon-App-76x76@2x.png", idiom: "ipad", scale: "2x"),
    // iPad Pro App Icon
    IconTarget(size: 167, path: "\(iosAssetCatalogPath)/Icon-App-83.5x83.5@2x.png", idiom: "ipad", scale: "2x"),
    // App Store Icon
    IconTarget(size: 1024, path: "\(iosAssetCatalogPath)/Icon-App-1024x1024@1x.png", idiom: "ios-marketing", scale: "1x")
]

// MARK: - Helper Functions

/* Comment out printUsage as it's no longer needed
func printUsage() {
    let scriptName = URL(fileURLWithPath: CommandLine.arguments[0]).lastPathComponent
    print("Usage: swift \(scriptName) <path_to_source_icon.png>")
    print("Example: swift \(scriptName) Assets/Icons/app_icon_source.png")
    print("\nThe source icon should ideally be 1024x1024 pixels or larger.")
}
*/

func runCommand(command: String, arguments: [String]) -> Bool {
    let task = Process()
    task.launchPath = command
    task.arguments = arguments

    print("Running: \(command) \(arguments.joined(separator: " "))")

    task.launch()
    task.waitUntilExit()

    if task.terminationStatus == 0 {
        return true
    } else {
        print("Error: Command failed with status \(task.terminationStatus)")
        // You might want to capture stderr here for more details
        return false
    }
}

func resizeAndSave(source: URL, destinationPath: String, size: Double) -> Bool {
    let destinationURL = URL(fileURLWithPath: destinationPath)
    let directoryURL = destinationURL.deletingLastPathComponent()

    // Create directory if it doesn't exist
    do {
        try FileManager.default.createDirectory(at: directoryURL, withIntermediateDirectories: true, attributes: nil)
    } catch {
        print("Error creating directory \(directoryURL.path): \(error)")
        return false
    }

    // Use sips to resize with improved quality
    let args = [
        // Использовать высокое качество масштабирования
        "--resampleHeightWidth", "\(Int(size))", "\(Int(size))",
        // Set output format to PNG with maximum quality
        "--setProperty", "format", "png",
        source.path,
        "--out", destinationURL.path
    ]

    return runCommand(command: "/usr/bin/sips", arguments: args)
}

// Function to generate Contents.json for iOS
func generateContentsJson(targets: [IconTarget], outputPath: String) -> Bool {
    var imagesArray: [[String: Any]] = []

    for target in targets {
        guard let idiom = target.idiom, let scale = target.scale else { continue }
        let filename = URL(fileURLWithPath: target.path).lastPathComponent
        
        // Calculate base size after converting target.size to Double for division
        let scaleValue = Double(scale.dropLast())!
        let baseSize = Double(target.size) / scaleValue
        let sizeString = "\(Int(baseSize))x\(Int(baseSize))"

        var imageDict: [String: Any] = [
            "filename": filename,
            "idiom": idiom,
            "scale": scale,
            "size": sizeString
        ]
        
        // iPad Pro (12.9-inch) requires subtype
        if idiom == "ipad" && target.size == 167 {
            imageDict["size"] = "83.5x83.5"
        }
        
        imagesArray.append(imageDict)
    }

    let jsonObject: [String: Any] = [
        "images": imagesArray,
        "info": [
            "author": "xcode",
            "version": 1
        ]
    ]

    do {
        let jsonData = try JSONSerialization.data(withJSONObject: jsonObject, options: [.prettyPrinted])
        let jsonURL = URL(fileURLWithPath: outputPath).appendingPathComponent("Contents.json")
        try jsonData.write(to: jsonURL)
        print("Generated: \(jsonURL.path)")
        return true
    } catch {
        print("Error generating Contents.json: \(error)")
        return false
    }
}

// MARK: - Create required directories before generation

func ensureDirectoriesExist() -> Bool {
    let directories = Set(androidTargets.map { URL(fileURLWithPath: $0.path).deletingLastPathComponent().path } + 
                         [iosAssetCatalogPath])
    
    for directory in directories {
        do {
            try FileManager.default.createDirectory(
                at: URL(fileURLWithPath: directory), 
                withIntermediateDirectories: true, 
                attributes: nil
            )
            print("Ensured directory exists: \(directory)")
        } catch {
            print("Error creating directory \(directory): \(error)")
            return false
        }
    }
    return true
}

// Function to update Info.plist with alternative icons
func updateInfoPlist(altIconNames: [String]) -> Bool {
    let infoPlistPath = "ios/Runner/Info.plist"
    guard FileManager.default.fileExists(atPath: infoPlistPath) else {
        print("Error: Info.plist file not found at \(infoPlistPath)")
        return false
    }
    
    // Read existing plist
    guard let plistData = FileManager.default.contents(atPath: infoPlistPath) else {
        print("Error: Could not read Info.plist data")
        return false
    }
    
    do {
        // Parse the plist XML
        var format = PropertyListSerialization.PropertyListFormat.xml
        guard var plist = try PropertyListSerialization.propertyList(from: plistData, 
                                                                     options: .mutableContainersAndLeaves, 
                                                                     format: &format) as? [String: Any] else {
            print("Error: Could not parse Info.plist")
            return false
        }
        
        // Create CFBundleAlternateIcons dictionary
        var alternateIcons = [String: [String: Any]]()
        
        for iconName in altIconNames {
            alternateIcons[iconName] = [
                "CFBundleIconFiles": [iconName],
                "UIPrerenderedIcon": false
            ]
        }
        
        // Create or update CFBundleIcons dictionary
        var bundleIcons = plist["CFBundleIcons"] as? [String: Any] ?? [String: Any]()
        
        // Add alternate icons
        bundleIcons["CFBundleAlternateIcons"] = alternateIcons
        
        // Add primary icon (using first alternative icon as sample)
        bundleIcons["CFBundlePrimaryIcon"] = [
            "CFBundleIconFiles": ["primary"],
            "UIPrerenderedIcon": false
        ]
        
        // Update plist
        plist["CFBundleIcons"] = bundleIcons
        
        // Convert back to XML and write to file
        let newPlistData = try PropertyListSerialization.data(
            fromPropertyList: plist,
            format: .xml,
            options: 0
        )
        
        try newPlistData.write(to: URL(fileURLWithPath: infoPlistPath))
        print("✅ Updated Info.plist with alternative icons")
        return true
    } catch {
        print("Error updating Info.plist: \(error)")
        return false
    }
}

// Process alternative icons from assets/app_icons/alts directory
func processAlternativeIcons() -> Bool {
    let altsSourcePath = "assets/app_icons/alts"
    let destinationPath = "ios/runner/App Icons"
    
    // Check if source directory exists
    guard FileManager.default.fileExists(atPath: altsSourcePath) else {
        print("Alternative icons directory not found at \(altsSourcePath)")
        return false
    }
    
    // Create destination directory if it doesn't exist
    do {
        try FileManager.default.createDirectory(
            at: URL(fileURLWithPath: destinationPath),
            withIntermediateDirectories: true,
            attributes: nil
        )
        print("Ensured directory exists: \(destinationPath)")
    } catch {
        print("Error creating directory \(destinationPath): \(error)")
        return false
    }
    
    // Get all PNG files from the source directory
    var altIcons: [URL] = []
    var altIconNames: [String] = []
    
    do {
        let contents = try FileManager.default.contentsOfDirectory(atPath: altsSourcePath)
        altIcons = contents.filter { $0.hasSuffix(".png") }.map { URL(fileURLWithPath: "\(altsSourcePath)/\($0)") }
        
        // Extract base names for Info.plist
        altIconNames = altIcons.map { 
            $0.lastPathComponent.replacingOccurrences(of: ".png", with: "")
        }
        
        if altIcons.isEmpty {
            print("No PNG files found in \(altsSourcePath)")
            return false
        }
    } catch {
        print("Error reading directory \(altsSourcePath): \(error)")
        return false
    }
    
    print("\n--- Processing Alternative Icons ---")
    var success = true
    
    // Process each icon
    for iconURL in altIcons {
        let filename = iconURL.lastPathComponent
        let basename = filename.replacingOccurrences(of: ".png", with: "")
        
        // Generate 2x version (120px)
        let dest2x = "\(destinationPath)/\(basename)@2x.png"
        print("Generating: \(dest2x) (120x120)")
        if !resizeAndSave(source: iconURL, destinationPath: dest2x, size: 120) {
            success = false
            print("Failed to generate \(dest2x)")
        }
        
        // Generate 3x version (180px)
        let dest3x = "\(destinationPath)/\(basename)@3x.png"
        print("Generating: \(dest3x) (180x180)")
        if !resizeAndSave(source: iconURL, destinationPath: dest3x, size: 180) {
            success = false
            print("Failed to generate \(dest3x)")
        }
    }
    
    // Update Info.plist with alternative icons
    if success && !altIconNames.isEmpty {
        if !updateInfoPlist(altIconNames: altIconNames) {
            success = false
            print("Failed to update Info.plist with alternative icons")
        }
    }
    
    if success {
        print("✅ Alternative icons generated successfully and added to Info.plist")
    } else {
        print("⚠️ Some alternative icons could not be generated. See above for details.")
    }
    
    return success
}

// MARK: - Main Script Logic

// 0. Ensure source file exists
let sourceIconPath = "assets/app_icons/logo.png" // Always use this icon
let sourceIconURL = URL(fileURLWithPath: sourceIconPath)

guard FileManager.default.fileExists(atPath: sourceIconURL.path) else {
    print("Error: Source icon file not found at \(sourceIconURL.path)")
    print("Please create assets directory and place logo.png file there.")
    exit(1)
}

// Verify source image size is adequate
do {
    let verifyArgs = ["-g", "pixelWidth,pixelHeight", sourceIconURL.path]
    let task = Process()
    task.launchPath = "/usr/bin/sips"
    task.arguments = verifyArgs
    
    let pipe = Pipe()
    task.standardOutput = pipe
    task.launch()
    task.waitUntilExit()
    
    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    if let output = String(data: data, encoding: .utf8) {
        print("Source image info: \(output)")
        
        if !output.contains("1024") && !output.contains("2048") {
            print("⚠️ Warning: Source image may not be large enough for optimal quality.")
            print("Recommended size is at least 1024x1024 pixels.")
        }
    }
} catch {
    print("Could not verify source image size: \(error)")
}

print("Using source icon: \(sourceIconURL.path)")

// 1. Create all required directories first
print("\n--- Creating Required Directories ---")
if !ensureDirectoriesExist() {
    print("❌ Failed to create all required directories.")
    exit(1)
}

// 2. Generate Android Icons
print("\n--- Generating Android Icons ---")
var androidSuccess = true
for target in androidTargets {
    print("Generating: \(target.path) (\(target.size)x\(target.size))")
    if !resizeAndSave(source: sourceIconURL, destinationPath: target.path, size: Double(target.size)) {
        androidSuccess = false
        print("Failed to generate \(target.path)")
        // Continue with other icons even if one fails
    }
}

if androidSuccess {
    print("✅ Android icons generated successfully.")
} else {
    print("⚠️ Some Android icons could not be generated. See above for details.")
}

// 3. Generate iOS Icons
print("\n--- Generating iOS Icons ---")
var iosSuccess = true

for target in iosTargets {
    print("Generating: \(target.path) (\(target.size)x\(target.size))")
    if !resizeAndSave(source: sourceIconURL, destinationPath: target.path, size: Double(target.size)) {
        iosSuccess = false
        print("Failed to generate \(target.path)")
        // Continue with other icons even if one fails
    }
}

// 4. Generate iOS Contents.json
if iosSuccess {
    print("\nGenerating iOS Contents.json...")
    if !generateContentsJson(targets: iosTargets, outputPath: iosAssetCatalogPath) {
        iosSuccess = false
    }
}

if iosSuccess {
    print("✅ iOS icons and Contents.json generated successfully.")
} else {
    print("⚠️ Some iOS icons could not be generated. See above for details.")
}

// 5. Process alternative icons
let altsSuccess = processAlternativeIcons()

// Final Summary
print("\n--- Summary ---")
print("🎉 Icon generation completed. Check the results in the following directories:")
print("   - Android: android/app/src/main/res/mipmap-*")
print("   - iOS: \(iosAssetCatalogPath)")
if altsSuccess {
    print("   - Alternative Icons: ios/runner/App Icons")
}

exit(0) 