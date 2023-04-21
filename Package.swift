// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "NEKit",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_11)
    ],
    products: [
        .library(
            name: "NEKit",
            targets: ["NEKit"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/behrang/YamlSwift.git", from: "3.4.4"),
        .package(url: "https://github.com/robbiehanson/CocoaAsyncSocket.git", from: "7.6.5"),
        .package(url: "https://github.com/OperatorFoundation/Resolver.git", from: "0.3.0"),
    ],
    targets: [
        .target(
            name: "NEKit",
            dependencies: [
                .product(name: "Yaml", package: "YamlSwift"),
                .product(name: "CocoaAsyncSocket", package: "CocoaAsyncSocket"),
                .product(name: "Resolver", package: "Resolver"),
            ],
            path: "src"
        ),
    ]
)
