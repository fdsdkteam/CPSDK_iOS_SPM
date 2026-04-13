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
            targets: ["PaymentSDK", "RLTMXProfiling", "CPSDK_iOS_SPM"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.5.0")
    ],
    targets: [
        .binaryTarget(
            name: "PaymentSDK",
            url: "https://github.com/fdsdkteam/CPSDK_iOS_SPM/releases/download/1.5.6/PaymentSDK_v1.5.6.xcframework.zip",
            checksum: "1cf793230a689c19de7d7684835d0b6d9e2f001dd9eb8fc09d0d334d9a4cf7f0"
        ),
        .binaryTarget(
            name: "RLTMXProfiling",
            url: "https://github.com/fdsdkteam/CPSDK_iOS_SPM/releases/download/1.5.6/RLTMXProfiling_v6.3.70.xcframework.zip",
            checksum: "84a6e3395e0f981d14ad58e95459edbc24db555508d6b6255d0adc7dd30a38cf"
        ),
        .target(
            name: "CPSDK_iOS_SPM",
            dependencies: [
                "PaymentSDK",
                "RLTMXProfiling",
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
