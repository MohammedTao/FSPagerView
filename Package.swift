// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "FSPagerView",
    platforms: [.iOS(.v8)],
    products: [
        .library(name: "FSPagerView", targets: ["FSPagerView"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "5.1.1")),
    ],
    targets: [
        .target(
            name: "FSPagerView", 
            dependencies: ["RxSwift"], 
            path: "Sources", 
            exclude: ["FSPagerViewObjcCompat.h", "FSPagerViewObjcCompat.m"]),
    ],
    swiftLanguageVersions: [.v5]
)
