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
        .package(url: "https://oss.navercorp.com/yeonguk-jo/SPM-NMapsGeometry.git", from: "1.0.0")
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
            url: "https://repository.map.naver.com/browse/pod/NMapsMap/3.16.2/NMapsMap.zip",
            checksum: "27d977474a569b59882a177a30b88be3f2d99fbd06a14b657fd9f792e3268647"
        ),
    ]
)
