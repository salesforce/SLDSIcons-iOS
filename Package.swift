// swift-tools-version: 5.9

//
//  Package.swift
//  SLDSIcons
//
//  Copyright (c) 2026, Salesforce, Inc.,
//  All rights reserved.
//  For full license text, see the TERMS_OF_USE.txt file
//

import PackageDescription

let package = Package(
    name: "SLDSIcons",
    platforms: [
        .iOS(.v17),
    ],
    products: [
        .library(
            name: "SLDSIcons",
            targets: ["SLDSIcons"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "SLDSIcons",
            url: "https://github.com/salesforce/SLDSIcons-iOS/releases/download/1.2.2/SLDSIcons.xcframework.zip",
            checksum: "32ee9fbb6ea6d7f9d9bb5ba3b56b4ce8e1f89854f485d0a17cde952af10452d8"
        ),
    ]
)
