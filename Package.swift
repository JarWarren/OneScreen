// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "OneScreen",
    platforms: [.macOS(.v11)],
    dependencies: [
        .package(url: "https://github.com/JarWarren/WarrenEngine", .branch("master"))
    ],
    targets: [
        .executableTarget(
            name: "OneScreen",
            dependencies: ["WarrenEngine"],
            resources: [.process("Resources")]
        ),
    ]
)
