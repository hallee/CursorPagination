// swift-tools-version:4.0

import PackageDescription

let package = Package(
	name: "CursorPagination",
	products: [
		.library(name: "CursorPagination", targets: ["CursorPagination"])
	],
	dependencies: [
		.package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
		.package(url: "https://github.com/vapor/fluent.git", from:"3.0.0"),
		.package(url: "https://github.com/Appsaurus/FluentTestApp", .upToNextMajor(from: "0.1.0")),
		.package(url: "https://github.com/Appsaurus/CodableExtensions", .upToNextMajor(from: "1.0.0")),
		.package(url: "https://github.com/hallee/RuntimeExtensions", from: "0.1.3")
	],
	targets: [
		.target(name: "CursorPagination", dependencies: ["Vapor", "Fluent", "CodableExtensions", "RuntimeExtensions"]),
		.testTarget(name: "CursorPaginationTests", dependencies: ["CursorPagination", "FluentTestApp"])
	]
)
