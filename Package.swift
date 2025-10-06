// swift-tools-version:6.1

import PackageDescription

let package = Package(
    name: "UnwrapArithmeticOperators",
    products: [
        .library(
            name: "UnwrapArithmeticOperators",
            targets: ["UnwrapArithmeticOperators"]
        ),
    ],
    traits: [
        .default(enabledTraits: ["UnwrapArithmetic"]),
        .trait(
            name: "UnwrapAddition",
            description: "Enables unchecked overflow addition operators (`+!` and `+=!`)."
        ),
        .trait(
            name: "UnwrapSubtraction",
            description: "Enables unchecked overflow subtraction operators (`-!` and `-=!`)."
        ),
        .trait(
            name: "UnwrapArithmetic",
            description: "Enables unchecked overflow operators.",
            enabledTraits: [
                "UnwrapAddition",
                "UnwrapSubtraction"
            ]
        ),
    ],
    targets: [
        .target(
            name: "UnwrapArithmeticOperators"
        ),
        .testTarget(
            name: "UnwrapArithmeticOperatorsTests",
            dependencies: ["UnwrapArithmeticOperators"]
        ),
    ]
)
