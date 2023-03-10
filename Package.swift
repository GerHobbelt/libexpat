// swift-tools-version:5.4
import PackageDescription

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
                    .headerSearchPath("../../config/android"),
                    .define("XML_POOR_ENTROPY")
                ])
    ],
    cLanguageStandard: .c11
)
