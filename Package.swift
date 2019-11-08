// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyJSONSupport",
    platforms: [
        .iOS(.v10),
        .macOS(.v10_12),
        .tvOS(.v10),
        .watchOS(.v3)
    ],
    products: [
        .library(
            name: "SwiftyJSONSupport",
            targets: ["SwiftyJSONSupport"]
        ),
        .library(
            name: "RxSwiftyJSONSupport",
            targets: ["RxSwiftyJSONSupport"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/zevwings/HTTPKit.git", from: "0.0.3"),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "5.0.0"),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "4.0.0")
    ],
    targets: [
        .target(
            name: "SwiftyJSONSupport",
            dependencies: ["HTTPKit", "SwiftyJSON"],
            path: "SwiftyJSONSupport"
        ),
        .target(
            name: "RxSwiftyJSONSupport",
            dependencies: ["SwiftyJSONSupport", "RxSwift"],
            path: "RxSwiftyJSONSupport"
        ),
    ],
    swiftLanguageVersions: [.v5]

)
