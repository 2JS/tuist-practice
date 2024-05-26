import ProjectDescription

let project = Project(
    name: "TuistPractice",
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
