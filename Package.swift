// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "H3kit",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "H3kit",
            targets: ["H3kit", "H3lib"]),
    ],
    targets: [
        .target(name: "H3lib", dependencies: [], path: "Sources/h3lib"),
        .target(name: "H3kit", dependencies: ["H3lib"], path: "Sources/SwiftWrapper")
    ]
)
