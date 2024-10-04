// swift-tools-version:5.9

import PackageDescription

let package = Package(
  name: "braze-swift-sdk",
  defaultLocalization: "en",
  platforms: [
    .iOS(.v12),
    .macCatalyst(.v13),
    .tvOS(.v12),
    .visionOS(.v1)
  ],
  products: [
    .library(
      name: "BrazeKit",
      targets: ["BrazeKit", "BrazeKitResources"]
    ),
    .library(
      name: "BrazeUI",
      targets: ["BrazeUI"]
    ),
    .library(
      name: "BrazeLocation",
      targets: ["BrazeLocation", "BrazeLocationResources"]
    ),
    .library(
      name: "BrazeNotificationService",
      targets: ["BrazeNotificationService"]
    ),
    .library(
      name: "BrazePushStory",
      targets: ["BrazePushStory", "BrazePushStoryResources"]
    ),
    .library(
      name: "BrazeKitCompat",
      targets: ["BrazeKitCompat"]
    ),
    .library(
      name: "BrazeUICompat",
      targets: ["BrazeUICompat"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.19.7"),
    /* ${dependencies-start} */
    /* ${dependencies-end} */
  ],
  targets: [
    .binaryTarget(
      name: "BrazeKit",
      url: "https://github.com/braze-inc/braze-swift-sdk-hang-investigation/releases/download/11.0.0/BrazeKit.zip",
      checksum: "4a23a5e967533ec638e05f708f14bea10e1e250523386f3323f63df90fded0dc"
    ),
    .target(
      name: "BrazeKitResources",
      resources: [
        .process("Resources"),
      ]
    ),
    .target(
      name: "BrazeUI",
      dependencies: [
        .target(name: "BrazeKit"),
      ],
      resources: [.process("Resources")]
    ),
    .binaryTarget(
      name: "BrazeLocation",
      url: "https://github.com/braze-inc/braze-swift-sdk-hang-investigation/releases/download/11.0.0/BrazeLocation.zip",
      checksum: "6da7067e27f94e1f3bc3d29a1c8e396a3d347861b0d330cd1961229eed3db6de"
    ),
    .target(
      name: "BrazeLocationResources",
      resources: [
        .process("Resources"),
      ]
    ),
    .binaryTarget(
      name: "BrazeNotificationService",
      url: "https://github.com/braze-inc/braze-swift-sdk-hang-investigation/releases/download/11.0.0/BrazeNotificationService.zip",
      checksum: "60c62def38ac5799fae6ffdf3bee2a18daafecfa16b95451547d5f8fc332962c"
    ),
    .binaryTarget(
      name: "BrazePushStory",
      url: "https://github.com/braze-inc/braze-swift-sdk-hang-investigation/releases/download/11.0.0/BrazePushStory.zip",
      checksum: "9e85a82f6e33bc6e5240cb4285d68e80d5e4a693f0fa64b40b564de4aff4ac47"
    ),
    .target(
      name: "BrazePushStoryResources",
      resources: [
        .process("Resources"),
      ]
    ),
    .target(
      name: "BrazeKitCompat",
      dependencies: [
        .target(name: "BrazeKit"),
        .target(name: "BrazeLocation"),
      ]
    ),
    .target(
      name: "BrazeUICompat",
      dependencies: [
        "BrazeKitCompat",
        "SDWebImage",
      ],
      resources: [
        .process("ABKNewsFeed/Resources"),
        .process("ABKInAppMessage/Resources"),
        .process("ABKContentCards/Resources")
      ],
      publicHeadersPath: "include/AppboyUI"
    ),
  ]
)
