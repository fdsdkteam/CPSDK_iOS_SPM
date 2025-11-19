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
            url: "https://github.com/fdsdkteam/CPSDK_iOS_SPM/releases/download/1.5.4/PaymentSDK_v1.5.4.xcframework.zip",
            checksum: "984083a1ea5e3078ec4a296ffeb56ca7e4c79068647410d32c57748c1407d8fd"
        ),
        .binaryTarget(
            name: "PayWithMyBank",
            url: "https://github.com/fdsdkteam/CPSDK_iOS_SPM/releases/download/1.5.4/PayWithMyBank_v2.3.0.xcframework.zip",
            checksum: "b467822c1976fd95a7e6139e4f3789e670d19a9b3f703b52ec4c6b9ea02db191"
        ),
        .binaryTarget(
            name: "RLTMXProfiling",
            url: "https://github.com/fdsdkteam/CPSDK_iOS_SPM/releases/download/1.5.4/RLTMXProfiling_v6.3.70.xcframework.zip",
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
