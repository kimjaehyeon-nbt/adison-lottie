// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdisonLottie",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AdisonLottie",
            type: .dynamic,
            targets: ["AdisonLottie"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/airbnb/lottie-spm",
            from: "4.0.1"
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AdisonLottie",
            dependencies: [
                .product(name: "Lottie", package: "lottie-spm")
            ]
        ),
    ]
)
