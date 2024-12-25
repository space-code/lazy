// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Lazy",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_13),
        .tvOS(.v12),
        .watchOS(.v4),
    ],
    products: [
        .library(name: "Lazy", targets: ["Lazy"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "Lazy", dependencies: []),
        .testTarget(name: "LazyTests", dependencies: ["Lazy"]),
    ]
)
