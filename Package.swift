// swift-tools-version:5.1
import Foundation
import PackageDescription

var package = Package(
  name: "swift-tagged",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_15),
    .tvOS(.v13),
    .watchOS("9.0"),
  ],
  products: [
    .library(name: "Tagged", targets: ["Tagged"]),
    .library(name: "TaggedMoney", targets: ["TaggedMoney"]),
    .library(name: "TaggedTime", targets: ["TaggedTime"]),
  ],
  targets: [
    .target(name: "Tagged", dependencies: []),
    .testTarget(name: "TaggedTests", dependencies: ["Tagged"]),

    .target(name: "TaggedMoney", dependencies: ["Tagged"]),
    .testTarget(name: "TaggedMoneyTests", dependencies: ["TaggedMoney"]),

    .target(name: "TaggedTime", dependencies: ["Tagged"]),
    .testTarget(name: "TaggedTimeTests", dependencies: ["TaggedTime"]),
  ]
)
