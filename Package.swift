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
      exclude: ["Nocilla.h"],
      publicHeadersPath: "include",
      cSettings: [
        .headerSearchPath("Categories"),
        .headerSearchPath("DSL"),
        .headerSearchPath("Hooks"),
        .headerSearchPath("Hooks/ASIHTTPRequest"),
        .headerSearchPath("Hooks/NSURLRequest"),
        .headerSearchPath("Hooks/NSURLSession"),
        .headerSearchPath("Matchers"),
        .headerSearchPath("Model"),
        .headerSearchPath("Stubs"),
        .headerSearchPath("."),
      ]
    ),
    .testTarget(
      name: "NocillaTests",
      dependencies: ["Nocilla"],
      path: "NocillaTests"
    ),
  ]
)
