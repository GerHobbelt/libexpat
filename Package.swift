// swift-tools-version:5.4
import Foundation
import PackageDescription

let configHeaderSearchPath: String
if ProcessInfo.processInfo.environment["BUILD_ANDROID"] != nil {
    configHeaderSearchPath = "../../config/android"
} else {
    configHeaderSearchPath = "../../config/apple"
}

let package = Package(
    name: "expat",
    products: [
        .library(name: "expat", targets: ["expat"])
    ],
    targets: [
        .target(name: "expat", 
                path: "expat/lib",
                exclude: ["Makefile.am", "winconfig.h"],
                publicHeadersPath: ".",
                cSettings: [
                    .headerSearchPath(configHeaderSearchPath),
                    .define("XML_POOR_ENTROPY")
                ])
    ],
    cLanguageStandard: .c11
)
