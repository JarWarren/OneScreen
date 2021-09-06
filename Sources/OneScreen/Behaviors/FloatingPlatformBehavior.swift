//
// Created by Jared Warren on 9/5/21.
//

import Foundation
import WarrenEngine

class FloatingPlatformBehavior: Behavior, PhysicsBodyDelegate {
    let direction: Direction
    let distance: Double
    weak var entity: Entity?
    weak var foreignBody: PhysicsBody?
    private let hoverFrames = 24
    private var isReversed = false
    private var reverseTimer: Int
    private var startingPosition = 0.0

    init(direction: Direction = .vertical, distance: Double = 120) {
        self.direction = direction
        self.distance = distance
        reverseTimer = hoverFrames
    }

    func behaviorWillStart() {
        getPhysicsBody(id: "hitbox")?.delegate = self
        if case .vertical = direction {
            startingPosition = entityPosition.y
        } else {
            startingPosition = entityPosition.x
        }
    }

    func update(_ deltaTime: TimeInterval) {
        if case .vertical = direction {
            // elevating
            if isReversed {
                if entityPosition.y < startingPosition + distance {
                    entityPosition.y += 1
                } else {
                    updateReverseTimer()
                }

                // descending
            } else {
                if entityPosition.y > startingPosition {
                    entityPosition.y -= 1
                } else {
                    updateReverseTimer()
                }
            }

            // moving left
        } else if isReversed {
            if entityPosition.x < startingPosition + distance {
                entityPosition.x += 1
                foreignBody?.entityPosition.x += 1
            } else {
                updateReverseTimer()
            }

            // moving right
        } else {
            if entityPosition.x > startingPosition {
                entityPosition.x -= 1
                foreignBody?.entityPosition.x -= 1
            } else {
                updateReverseTimer()
            }
        }
    }

    func updateReverseTimer() {
        if reverseTimer > 0 {
            reverseTimer -= 1
        } else {
            reverseTimer = hoverFrames
            isReversed.toggle()
        }
    }

    func behaviorWillTerminate() {
    }

    func bodyDidEnter(_ body: PhysicsBody) {
        foreignBody = body
    }

    func bodyDidExit(_ body: PhysicsBody) {
        foreignBody = nil
    }

    enum Direction {
        case vertical, horizontal
    }
}
