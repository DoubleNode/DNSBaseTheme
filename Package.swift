// swift-tools-version:5.6
//
//  Package.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "DNSBaseTheme",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
        .macOS(.v10_15),
        .watchOS(.v6),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "DNSBaseTheme",
            type: .static,
            targets: ["DNSBaseTheme"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Alamofire/AlamofireImage.git", from: "4.2.0"),
        .package(url: "https://github.com/DoubleNodeOpen/AnimatedField.git", branch: "spm"),
        .package(url: "https://github.com/DoubleNode/DNSCore.git", from: "1.8.0"),
        .package(url: "https://github.com/SwipeCellKit/SwipeCellKit", from: "2.7.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "DNSBaseTheme",
            dependencies: [
                "AlamofireImage", "AnimatedField", "DNSCore", "SwipeCellKit",
        ]),
        .testTarget(
            name: "DNSBaseThemeTests",
            dependencies: ["DNSBaseTheme"]),
    ],
    swiftLanguageVersions: [.v5]
)
