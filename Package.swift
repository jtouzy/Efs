// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "Efs",
  products: [
    .library(
      name: "Efs",
      targets: ["Efs"]
    )
  ],
  dependencies: [],
  targets: [
    .target(
      name: "Efs",
      dependencies: []
    ),
    .testTarget(
      name: "EfsTests",
      dependencies: ["Efs"]
    )
  ]
)
