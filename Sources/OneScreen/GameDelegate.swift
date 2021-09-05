//
// Created by Jared Warren on 9/4/21.
//

import AppKit
import Foundation
import WarrenEngine

@main
class GameDelegate: GameLauncher, VideoGameDelegate {
    func launchSettings() -> LaunchSettings {
        LaunchSettings(
            title: "One Screen Platformer",
//            backgroundColor: <#T##Color##Color#>,
            initialWindowSize: Vector(x: 1024, y: 720),
            minimumWindowSize: Vector(x: 1024, y: 720),
            startingScene: GameScene()
        )
    }

    func gameWillFinishLaunching() {

    }

    func gameWillTerminate() {

    }
}
