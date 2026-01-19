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
            targets: ["PaymentSDK", "PayWithMyBank", "RLTMXProfiling", "CPSDK_iOS_SPM"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.5.0")
    ],
    targets: [
        .binaryTarget(
            name: "PaymentSDK",
            url: "https://github.com/fdsdkteam/CPSDK_iOS_SPM/releases/download/1.5.5/PaymentSDK_v1.5.5.xcframework.zip",
            checksum: "ba099a7cfb54abd0ab8f43f5fec83a3b2572c4c7a71ac1ab017f5d688d8a6af7"
        ),
        .binaryTarget(
            name: "PayWithMyBank",
            url: "https://github.com/fdsdkteam/CPSDK_iOS_SPM/releases/download/1.5.5/PayWithMyBank_v2.3.0.xcframework.zip",
            checksum: "b467822c1976fd95a7e6139e4f3789e670d19a9b3f703b52ec4c6b9ea02db191"
        ),
        .binaryTarget(
            name: "RLTMXProfiling",
            url: "https://github.com/fdsdkteam/CPSDK_iOS_SPM/releases/download/1.5.5/RLTMXProfiling_v6.3.70.xcframework.zip",
            checksum: "84a6e3395e0f981d14ad58e95459edbc24db555508d6b6255d0adc7dd30a38cf"
        ),
        .target(
            name: "CPSDK_iOS_SPM",
            dependencies: [
                "PaymentSDK",
                "PayWithMyBank",
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
