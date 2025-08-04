// swift-tools-version: 6.1
import PackageDescription

let package = Package(
  name: "Nocilla",
  defaultLocalization: "en",
  products: [
    .library(
      name: "Nocilla",
      targets: ["Nocilla"]),
  ],
  targets: [
    .target(
      name: "Nocilla",
      path: "Nocilla",
      publicHeadersPath:"include",
//      cSettings: [
//        .headerSearchPath("./**"),
//      ]
    ),
    .testTarget(
      name: "NocillaTests",
      dependencies: ["Nocilla"],
      path: "NocillaTests"
    ),
  ]
)
