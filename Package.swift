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
            checksum: "be2cc777a62dc440aafd61f7d55f1f7b6c6df78e01d582c3fd9afec91e921f0f"
        ),
    ]
)
