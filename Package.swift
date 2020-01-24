// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "ReCaptcha",
    platforms: [
        .iOS(.v8)
    ],
    products: [
        .library(name: "ReCaptcha", targets: ["ReCaptcha"]),
        .library(name: "ReCaptcha_RxSwift", targets: ["ReCaptcha", "ReCaptcha_RxSwift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "5.0.0")
    ],
    targets: [
        .target(name: "ReCaptcha", dependencies: [], path: "ReCaptcha/Classes/", exclude: ["Rx"]),
        .target(name: "ReCaptcha_RxSwift", dependencies: ["RxSwift"], path: "ReCaptcha/Classes/Rx")
    ]
)
