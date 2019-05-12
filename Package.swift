// swift-tools-version:4.0
import PackageDescription


let package = Package(
    name: "OutlawSpriteKit",
    products: [
        .library(name: "OutlawSpriteKit", targets: ["OutlawSpriteKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/Molbie/Outlaw.git", from: "4.0.0"),
        .package(url: "https://github.com/Molbie/Outlaw-CoreGraphics.git", from: "2.0.0"),
        .package(url: "https://github.com/Molbie/Outlaw-simd.git", from: "2.0.0"),
        .package(url: "https://github.com/Molbie/Outlaw-AppKit.git", from: "2.0.0"),
        .package(url: "https://github.com/Molbie/Outlaw-UIKit.git", from: "2.0.0")
    ],
    targets: [
        .target(name: "OutlawSpriteKit", dependencies: ["Outlaw", "OutlawCoreGraphics", "OutlawSimd", "OutlawAppKit", "OutlawUIKit"]),
        .testTarget(name: "OutlawSpriteKitTests", dependencies: ["OutlawSpriteKit"])
    ]
)
