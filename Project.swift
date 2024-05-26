import ProjectDescription

let project = Project(
    name: "TuistPractice",
    packages: [
      .remote(url: "https://github.com/apple/swift-collections.git", requirement: .upToNextMajor(from: "1.1.0"))
    ],
    targets: [
        .target(
            name: "TuistPractice",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.TuistPractice",
            deploymentTargets: .iOS("15.0"),
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["TuistPractice/Sources/**"],
            resources: ["TuistPractice/Resources/**"],
            scripts: [
              .post(tool: "noti", name: "noti")
            ],
            dependencies: []
        ),
        .target(
            name: "TuistPracticeTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.TuistPracticeTests",
            deploymentTargets: .iOS("15.0"),
            infoPlist: .default,
            sources: ["TuistPractice/Tests/**"],
            resources: [],
            dependencies: [.target(name: "TuistPractice")]
        ),
    ]
)
