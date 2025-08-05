// swift-tools-version: 6.1
import PackageDescription

let package = Package(
  name: "Nocilla",
  defaultLocalization: "en",
  platforms: [
    .macOS(.v10_15),
    .iOS(.v12)
  ],
  products: [
    .library(
      name: "Nocilla",
      targets: ["Nocilla"]),
  ],
  targets: [
    .target(
      name: "Nocilla",
      path: "Nocilla",
      exclude: ["Nocilla.h"],
      publicHeadersPath: "include"
    ),
    .testTarget(
      name: "NocillaTests",
      dependencies: ["Nocilla"],
      path: "NocillaTests"
    ),
  ]
)
