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
            Sprite(texture: .terrain)
            Shape(
                shape: .rectangle(size: Vector(x: 1024, y: 120)),
                color: .black,
                offset: Vector(x: 0, y: 720)
            )

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
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 9, y: 256)),
                type: .static,
                offset: Vector(x: 724, y: 148)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 283, y: 9)),
                type: .static,
                offset: Vector(x: 732, y: 392)
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

            // bronze blocks
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 140, y: 16)),
                type: .static,
                offset: Vector(x: 8, y: 482)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 16, y: 16)),
                type: .static,
                offset: Vector(x: 94, y: 153)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 16, y: 16)),
                type: .static,
                offset: Vector(x: 141, y: 180)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 16, y: 16)),
                type: .static,
                offset: Vector(x: 171, y: 232)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 16, y: 16)),
                type: .static,
                offset: Vector(x: 140, y: 269)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 16, y: 16)),
                type: .static,
                offset: Vector(x: 109, y: 300)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 16, y: 16)),
                type: .static,
                offset: Vector(x: 79, y: 332)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 16, y: 48)),
                type: .static,
                offset: Vector(x: 94, y: 300)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 32, y: 32)),
                type: .static,
                offset: Vector(x: 86, y: 399)
            )

            // silver blocks
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 16, y: 16)),
                type: .static,
                offset: Vector(x: 437, y: 11)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 16, y: 16)),
                type: .static,
                offset: Vector(x: 437, y: 60)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 16, y: 16)),
                type: .static,
                offset: Vector(x: 437, y: 111)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 16, y: 16)),
                type: .static,
                offset: Vector(x: 437, y: 168)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 32, y: 32)),
                type: .static,
                offset: Vector(x: 429, y: 222)
            )

            // gold blocks
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 16, y: 48)),
                type: .static,
                offset: Vector(x: 732, y: 243)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 16, y: 16)),
                type: .static,
                offset: Vector(x: 779, y: 377)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 16, y: 16)),
                type: .static,
                offset: Vector(x: 953, y: 377)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 48, y: 16)),
                type: .static,
                offset: Vector(x: 833, y: 67)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 48, y: 16)),
                type: .static,
                offset: Vector(x: 833, y: 138)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 48, y: 16)),
                type: .static,
                offset: Vector(x: 833, y: 217)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 48, y: 16)),
                type: .static,
                offset: Vector(x: 833, y: 300)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 16, y: 48)),
                type: .static,
                offset: Vector(x: 1000, y: 201)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 32, y: 32)),
                type: .static,
                offset: Vector(x: 984, y: 314)
            )

            // goal platforms
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 48, y: 8)),
                type: .static,
                offset: Vector(x: 8, y: 133)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 48, y: 8)),
                type: .static,
                offset: Vector(x: 968, y: 518)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 48, y: 8)),
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
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 63, y: 48)),
                type: .static,
                offset: Vector(x: 205, y: 206)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 63, y: 48)),
                type: .static,
                offset: Vector(x: 622, y: 206)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 48, y: 25)),
                type: .static,
                offset: Vector(x: 732, y: 368)
            )
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 48, y: 48)),
                type: .static,
                offset: Vector(x: 968, y: 345)
            )
            ScrollingBackgroundBehavior(texture: .background)
        }

        // Floating Platforms
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
        createEntity(at: Vector(x: 620, y: 677)) {
            Sprite(animation: .fire)
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 16, y: 16)),
                type: .static,
                categoryBitMask: .dangerous,
                collisionBitMask: .none,
                detectionBitMask: .none
            )
        }
        // Goals
        createEntity(at: .zero) {
            Sprite(
                id: "wood",
                animation: .goalIdle,
                offset: Vector(x: 958, y: 454)
            )
            PhysicsBody(
                id: "wood",
                shape: .rectangle(size: Vector(x: 24, y: 24)),
                type: .static,
                offset: Vector(x: 980, y: 480),
                categoryBitMask: .friendly,
                collisionBitMask: .none,
                detectionBitMask: .player
            )
            Sprite(
                id: "iron",
                texture: .goal,
                offset: Vector(x: 8, y: 69)
            )
            PhysicsBody(
                id: "iron",
                shape: .rectangle(size: Vector(x: 24, y: 24)),
                type: .static,
                offset: Vector(x: 30, y: 100),
                categoryBitMask: .friendly,
                collisionBitMask: .none,
                detectionBitMask: .player
            )
            Sprite(
                id: "gold",
                texture: .trophy,
                offset: Vector(x: 958, y: 40)
            )
            PhysicsBody(
                id: "gold",
                shape: .rectangle(size: Vector(x: 24, y: 24)),
                type: .static,
                offset: Vector(x: 990, y: 72),
                categoryBitMask: .friendly,
                collisionBitMask: .none,
                detectionBitMask: .player
            )
            GoalBehavior()
        }

        // Player
        createEntity(at: Vector(x: 48, y: 680)) {
            Sprite(animation: .frogIdle)
            PhysicsBody(
                shape: .rectangle(size: Vector(x: 24, y: 24)),
                type: .dynamic,
                offset: Vector(x: 4, y: 8),
                categoryBitMask: .player,
                collisionBitMask: .terrain,
                detectionBitMask: .dangerous
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