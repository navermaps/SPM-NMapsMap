// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "NMapsMap",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "NMapsMap",
            targets: ["NMapsMapTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/navermaps/SPM-NMapsGeometry.git", from: "1.0.2")
    ],
    targets: [
        .target(
            name: "NMapsMapTarget",
            dependencies: [
                .target(name: "NMapsMapBinary"),
                .product(name: "NMapsGeometry", package: "SPM-NMapsGeometry")
            ],
            path: "Sources/NMapsMap"
        ),
        .binaryTarget(
            name: "NMapsMapBinary",
            url: "https://repository.map.naver.com/archive/pod/NMapsMap/3.23.2/NMapsMap.zip",
            checksum: "ecdb0d9dd3f7b77e8a849ff8112ff0bbf1b990c68616d7526dc83ffe48e6b1c8"
        ),
    ]
)
