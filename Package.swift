import PackageDescription

let package = Package(
  name: "Inquiline",
  dependencies: [
    .Package(url: "https://github.com/nestproject/Nest.git", majorVersion: 0, minor: 4),
    .Package(url: "https://github.com/kylef/Spectre.git", majorVersion: 0, minor: 7),
  ]
)
