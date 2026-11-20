// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "TPNMediationMolocoAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "TPNMediationMolocoAdapter",
            targets: ["TPNMediationMolocoAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/topon-packages/TPNiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/moloco/moloco-sdk-ios-spm.git", exact: "4.12.0")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkMolocoAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkMolocoAdapter/41200.2.10/AnyThinkMolocoAdapter-41200.2.10.zip",
            checksum: "ef1b75d33f19545494425ed6e22c56fc11ea3fcc6d819d6d7cd75af67480d408"
        ),
        .target(
            name: "TPNMediationMolocoAdapterTarget",
            dependencies: [
                "AnyThinkMolocoAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM"),
                .product(name: "MolocoSDK", package: "moloco-sdk-ios-spm")
            ],
            path: "Sources/TPNMediationMolocoAdapterTarget"
        )
    ]
)