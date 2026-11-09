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
            url: "https://repository.map.naver.com/archive/pod/NMapsMap/3.24.1/NMapsMap.zip",
            checksum: "3ba58065fe6351d3da49de1dcbe4868acbfa4dd83e1991d9c375197f62a6ca40"
        ),
    ]
)
