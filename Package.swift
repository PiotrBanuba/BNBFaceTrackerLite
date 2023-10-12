// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.8.0-1"

let package = Package(
    name: "BNBFaceTrackerLite",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBFaceTrackerLite",
            targets: ["BNBFaceTrackerLite"]
        ),
        .library(
            name: "BNBSdkCore",
            targets: ["BNBSdkCore"]
        ),
        .library(
            name: "BNBEffectPlayer",
            targets: ["BNBEffectPlayer"]
        ),
        .library(
            name: "BNBScripting",
            targets: ["BNBScripting"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/PiotrBanuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/PiotrBanuba/BNBEffectPlayer.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/PiotrBanuba/BNBScripting.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBFaceTrackerLite",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.8.0-58-g46079e7d74/BNBFaceTrackerLite.zip",
            checksum: "df7ed502989354c369a2532f8061bbd1ceb672ccd3c21537eba0c51e084d0fcc"
        ),
        .target(
            name: "BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBEffectPlayer",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBScripting",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
    ]
)
