// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CPSDK_iOS_SPM",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CPSDK_iOS_SPM",
            targets: ["PaymentSDK", "PayWithMyBank", "RLTMXProfiling"]),
    ],
    targets: [
        .binaryTarget(
            name: "PaymentSDK",
            url: "https://github.com/fdsdkteam/CPSDK_iOS_SPM/releases/download/1.4.0/PaymentSDK_v1.4.0.xcframework.zip",
            checksum: "d7a2de12bd3a5cd040a4052a19b89908f5a4b13db98c36f1f4432b0228c55ba5"
        ),
        .binaryTarget(
            name: "PayWithMyBank",
            url: "https://github.com/fdsdkteam/CPSDK_iOS_SPM/releases/download/1.3.9/PayWithMyBank_v2.3.0.xcframework.zip",
            checksum: "b467822c1976fd95a7e6139e4f3789e670d19a9b3f703b52ec4c6b9ea02db191"
        ),
        .binaryTarget(
            name: "RLTMXProfiling",
            url: "https://github.com/fdsdkteam/CPSDK_iOS_SPM/releases/download/1.3.9/RLTMXProfiling_v6.3.70.xcframework.zip",
            checksum: "84a6e3395e0f981d14ad58e95459edbc24db555508d6b6255d0adc7dd30a38cf"
        ),
        .testTarget(
            name: "CPSDK_iOS_SPMTests",
            dependencies: ["PaymentSDK", "PayWithMyBank", "RLTMXProfiling"]
        )
    ]
)
