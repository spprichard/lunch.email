// swift-tools-version:3.0

import PackageDescription

let package = Package(
    name: "lunch.email",
	dependencies: [
	   .Package(
               url: "https://github.com/PerfectlySoft/Perfect-HTTPServer.git", 
               majorVersion: 2
            )
	]
)
