//
// Created by Jared Warren on 9/4/21.
//

import Foundation
import WarrenEngine

class GameScene: Scene {
    override func sceneDidLoad() {
        super.sceneDidLoad()

        // Environment
        createEntity(at: .zero) {
            ParallaxBackgroundBehavior(texture: .background)
            Sprite(texture: .terrain)

        }

        // Enemies


        // Player
    }

    override func update(deltaTime: Foundation.TimeInterval) {
        super.update(deltaTime: deltaTime)
        if Input.wasKeyPressed(.tab) { Game.isDebugMode.toggle() }
    }
}