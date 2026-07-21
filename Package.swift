// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "Sentry",
    platforms: [.iOS(.v15), .macOS(.v10_14), .tvOS(.v15), .watchOS(.v8), .visionOS(.v1)],
    products: [
        .library(name: "Sentry-Static", targets: ["Sentry-Static", "SentryCppHelper"]),
        .library(name: "SentryObjC-Static", targets: ["SentryObjC-Static"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "Sentry-Static",
            url: "https://github.com/getsentry/sentry-cocoa/releases/download/9.22.0/Sentry.xcframework.zip",
            checksum: "5eeef9ad95be6b5965296e09ba41c5390382fe84988b15f1615cd0cc3fa7caca" //Sentry-Static
        ),
        .binaryTarget(
            name: "SentryObjC-Static",
            url: "https://github.com/getsentry/sentry-cocoa/releases/download/9.22.0/SentryObjC-Static.xcframework.zip",
            checksum: "037af4ba6f25e45ebb5d7d08c88d008cd5c09f781d3af0fd972060e11cae7708" //SentryObjC-Static
        ),
        .target(
            name: "SentryCppHelper",
            path: "Sources/SentryCppHelper",
            linkerSettings: [
                .linkedLibrary("c++")
            ]
        ),
    ],
    swiftLanguageModes: [.v5],
    cxxLanguageStandard: .cxx14
)
