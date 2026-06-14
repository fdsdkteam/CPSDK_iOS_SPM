// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CPSDK_iOS_SPM",
    platforms: [
        .iOS(.v13) // Specify the minimum iOS version to support Lottie
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CPSDK_iOS_SPM",
            targets: ["PaymentSDK", "RLTMXProfiling", "RLTMXProfiling-companion", "CPSDK_iOS_SPM"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.5.0")
    ],
    targets: [
        .binaryTarget(
            name: "PaymentSDK",
            url: "https://github.com/fdsdkteam/CPSDK_iOS_SPM/releases/download/1.5.7/PaymentSDK_v1.5.7.xcframework.zip",
            checksum: "348040379fcfba7b87a9a64e8ed786dcd4d585cf4b455ea98942a5ea0a9bc652"
        ),
        .binaryTarget(
            name: "RLTMXProfiling",
            url: "https://github.com/fdsdkteam/CPSDK_iOS_SPM/releases/download/1.5.7/RLTMXProfiling_v8.1.xcframework.zip",
            checksum: "6b2d0123dd8cd2acf121aed0a692f9ee0ada6b7deb97a3283ce464b5e75bba0f"
        ),
        .binaryTarget(
            name: "RLTMXProfiling-companion",
            url: "https://github.com/fdsdkteam/CPSDK_iOS_SPM/releases/download/1.5.7/RLTMXProfiling-companion_v8.1.xcframework.zip",
            checksum: "456bb30bc02203d552bda1150ca0c93e40640d39908efc0ead15f5958102344c"
        ),
        .target(
            name: "CPSDK_iOS_SPM",
            dependencies: [
                "PaymentSDK",
                "RLTMXProfiling",
                "RLTMXProfiling-companion",
                .product(name: "Lottie", package: "lottie-spm")
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "CPSDK_iOS_SPMTests",
            dependencies: ["CPSDK_iOS_SPM"],
            path: "Tests"
        )
    ]
)
