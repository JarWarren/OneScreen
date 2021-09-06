//
// Created by Jared Warren on 9/4/21.
//

import Foundation
import WarrenEngine

class GameScene: Scene {
    override func sceneDidLoad() {
        super.sceneDidLoad()
        Game.isDebugMode = true

        // Environment
        createEntity(at: .zero) {
            Sprite(texture: .terrain)

            // walls
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 9, y: 720)),
                type: .static
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 9, y: 720)),
                type: .static,
                offset: Vector(x: 1015, y: 0)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 1024, y: 12)),
                type: .static
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 1024, y: 12)),
                type: .static,
                offset: Vector(x: 0, y: 708)
            )

            // blocks
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 32, y: 32)),
                type: .static,
                offset: Vector(x: 8, y: 11)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 16, y: 16)),
                type: .static,
                offset: Vector(x: 39, y: 11)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 16, y: 16)),
                type: .static,
                offset: Vector(x: 8, y: 693)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 16, y: 16)),
                type: .static,
                offset: Vector(x: 1000, y: 693)
            )

            // bricks
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 480, y: 48)),
                type: .static,
                offset: Vector(x: 205, y: 466)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 480, y: 48)),
                type: .static,
                offset: Vector(x: 205, y: 253)
            )

            // goal platforms
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 48, y: 5)),
                type: .static,
                offset: Vector(x: 8, y: 133)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 48, y: 5)),
                type: .static,
                offset: Vector(x: 968, y: 518)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 48, y: 5)),
                type: .static,
                offset: Vector(x: 968, y: 104)
            )

            // grass
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 444, y: 21)),
                type: .static,
                offset: Vector(x: 140, y: 688)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 92, y: 37)),
                type: .static,
                offset: Vector(x: 184, y: 652)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 45, y: 24)),
                type: .static,
                offset: Vector(x: 275, y: 664)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 45, y: 18)),
                type: .static,
                offset: Vector(x: 448, y: 670)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 48, y: 54)),
                type: .static,
                offset: Vector(x: 492, y: 634)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 45, y: 21)),
                type: .static,
                offset: Vector(x: 669, y: 688)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 48, y: 75)),
                type: .static,
                offset: Vector(x: 713, y: 634)
            )
            ScrollingBackgroundBehavior(texture: .background)
        }

        // Platforms
        createEntity(at: Vector(x: 560, y: 600)) {
            Sprite(animation: .floatingPlatform)
            PhysicsBody(shape: .rectangle(size: Vector(x: 32, y: 10)), type: .static)
            PhysicsBody(
                id: "hitbox",
                shape: .rectangle(size: Vector(x: 32, y: 5)),
                type: .static,
                offset: Vector(x: 0, y: -5),
                categoryBitMask: .terrain,
                collisionBitMask: .none,
                detectionBitMask: .player
            )
            FloatingPlatformBehavior(direction: .horizontal)
        }

        createEntity(at: Vector(x: 860, y: 550)) {
            Sprite(animation: .floatingPlatform)
            PhysicsBody(shape: .rectangle(size: Vector(x: 32, y: 10)), type: .static)
            PhysicsBody(
                id: "hitbox",
                shape: .rectangle(size: Vector(x: 32, y: 5)),
                type: .static,
                offset: Vector(x: 0, y: -5),
                categoryBitMask: .terrain,
                collisionBitMask: .none,
                detectionBitMask: .player
            )
            FloatingPlatformBehavior()
        }

        createEntity(at: Vector(x: 730, y: 510)) {
            Sprite(animation: .floatingPlatform)
            PhysicsBody(shape: .rectangle(size: Vector(x: 32, y: 10)), type: .static)
            PhysicsBody(
                id: "hitbox",
                shape: .rectangle(size: Vector(x: 32, y: 5)),
                type: .static,
                offset: Vector(x: 0, y: -5),
                categoryBitMask: .terrain,
                collisionBitMask: .none,
                detectionBitMask: .player
            )
            FloatingPlatformBehavior(direction: .horizontal, distance: 180)
        }


        // Enemies

        // End goal
        createEntity(at: Vector(x: 958, y: 40)) {
            Sprite(texture: .end)
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 4, y: 24)),
                type: .static,
                offset: Vector(x: 32, y: 32),
                categoryBitMask: .friendly,
                collisionBitMask: .none,
                detectionBitMask: .player
            )
            EndGoalBehavior()
        }

        // Player
        createEntity(at: Vector(x: 48, y: 680)) {
            Sprite(animation: .frogIdle)
            PhysicsBody(
                shape: .circle(radius: 12),
                type: .dynamic,
                offset: Vector(x: 16, y: 20),
                categoryBitMask: .player,
                collisionBitMask: .terrain,
                detectionBitMask: .none
            )
            PlayerController()
        }
    }

    override func update(deltaTime: Foundation.TimeInterval) {
        super.update(deltaTime: deltaTime)
        if Input.wasKeyPressed(.d) {
            Game.isDebugMode.toggle()
        }
        if Input.wasKeyPressed(.f) {
            Window.toggleFullscreen()
        }
    }
}