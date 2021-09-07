//
// Created by Jared Warren on 9/5/21.
//

import Foundation
import WarrenEngine

class PlayerController: Behavior, PhysicsBodyDelegate {
    weak var entity: Entity?
    weak var body: PhysicsBody?
    weak var sprite: Sprite?
    private var verticalAcceleration = 0.0
    private let speed = 3.6
    private var state: State = .idle


    func behaviorWillStart() {
        body = getPhysicsBody()
        sprite = getSprite()
        body?.delegate = self
    }

    func update(_ deltaTime: TimeInterval) {
        guard state != .dead else { return }


        // apply gravity but cap at -9
        verticalAcceleration = max(verticalAcceleration - 0.75, -speed * 2)

        // check for inputs
        if Input.isKeyDown(.left) {
            entity?.position.x -= speed
            sprite?.isFlippedHorizontally = true
            if state != .run {
                state = .run
                sprite?.animation = .frogRun
            }
        } else if Input.isKeyDown(.right) {
            entity?.position.x += speed
            sprite?.isFlippedHorizontally = false
            if state != .run {
                state = .run
                sprite?.animation = .frogRun
            }
        } else if state != .idle {
            state = .idle
            sprite?.animation = .frogIdle
        }

        if Input.wasKeyPressed(.space),
           body?.isOnFloor == true {
            verticalAcceleration = speed * 3
        }

        // apply acceleration
        entity?.position.y -= verticalAcceleration
    }

    func behaviorWillTerminate() {
    }

    func bodyDidEnter(_ body: PhysicsBody) {
        if body.categoryBitMask.contains(.dangerous) {
            state = .dead
            sprite?.animation = .frogDeath
            sprite?.offset = Vector(x: -32, y: -32)
        }
    }

    func bodyDidExit(_ body: PhysicsBody) {

    }

    enum State {
        case idle, run, jump, fall, doubleJump, doubleFall, dead, wallJump
    }
}
