import PackageDescription

let package = Package(
  name: "Inquiline",
  dependencies: [
    .Package(url: "https://github.com/loganwright/Nest.git", majorVersion: 0, minor: 3),
  ]
)
