// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "CompositionalLayoutViewControllerFetchableExtension",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "CompositionalLayoutViewControllerFetchableExtension",
            targets: ["CompositionalLayoutViewControllerFetchableExtension"]
        ),
        .library(
            name: "CompositionalLayoutViewControllerFetchableExtensionPromises",
            targets: ["CompositionalLayoutViewControllerFetchableExtensionPromises"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/0x0c/CompositionalLayoutViewControllerExtension.git", .upToNextMajor(from: "0.1.0")),
        .package(url: "https://github.com/oneinc-jp/CompositionalLayoutViewController.git", .upToNextMajor(from: "0.1.0")),
        .package(url: "https://github.com/google/promises.git", .upToNextMajor(from: "2.0.0"))
    ],
    targets: [
        .target(
            name: "CompositionalLayoutViewControllerFetchableExtension",
            dependencies: [
                .product(name: "CompositionalLayoutViewController", package: "CompositionalLayoutViewController"),
                .product(name: "CompositionalLayoutViewControllerExtension", package: "CompositionalLayoutViewControllerExtension"),
            ],
            path: "Sources/SwiftConcurrency"
        ),
        .target(
            name: "CompositionalLayoutViewControllerFetchableExtensionPromises",
            dependencies: [
                .product(name: "CompositionalLayoutViewController", package: "CompositionalLayoutViewController"),
                .product(name: "CompositionalLayoutViewControllerExtension", package: "CompositionalLayoutViewControllerExtension"),
                .product(name: "Promises", package: "Promises"),
            ],
            path: "Sources/Promises"
        )
    ]
)
