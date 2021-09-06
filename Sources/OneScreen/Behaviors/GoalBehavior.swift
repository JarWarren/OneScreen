//
// Created by Jared Warren on 9/5/21.
//

import Foundation
import WarrenEngine

class GoalBehavior: Behavior, PhysicsBodyDelegate {
    weak var entity: Entity?
    weak var woodSprite: Sprite?
    weak var woodBody: PhysicsBody?
    weak var ironSprite: Sprite?
    weak var ironBody: PhysicsBody?
    weak var goldSprite: Sprite?
    weak var goldBody: PhysicsBody?
    private var activeGoal: ActiveGoal = .wood
    private var ironTimer = 100

    func behaviorWillStart() {
        woodSprite = getSprite(id: "wood")
        woodBody = getPhysicsBody(id: "wood")
        ironSprite = getSprite(id: "iron")
        ironBody = getPhysicsBody(id: "iron")
        goldSprite = getSprite(id: "gold")
        goldBody = getPhysicsBody(id: "gold")

        woodBody?.delegate = self
        ironBody?.delegate = self
        goldBody?.delegate = self

        ironBody?.isEnabled = false
        goldBody?.isEnabled = false
    }

    func update(_ deltaTime: TimeInterval) {
        if case .iron = activeGoal {
            ironTimer -= 1
            if ironTimer == 0 {
                ironSprite?.animation = .goalIdle
            }
        }
    }

    func behaviorWillTerminate() {
    }

    func bodyDidEnter(_ body: PhysicsBody) {
        removeComponentFromEntity(body)
        switch activeGoal {
        case .wood:
            woodSprite?.animation = nil
            woodSprite?.tint = .lightGray
            woodSprite?.texture = .goal
            ironBody?.isEnabled = true
            ironSprite?.animation = Animation(
                textures: SpriteSheet(fileName: "Checkpoint (Flag Out) (64x64)", rows: 1, columns: 26)![0...25],
                framesPerSecond: Animation.animationSpeed
            )
            activeGoal = .iron
        case .iron:
            ironSprite?.animation = nil
            ironSprite?.tint = .lightGray
            goldBody?.isEnabled = true
            goldSprite?.animation = Animation(
                textures: SpriteSheet(fileName: "End (Pressed) (64x64)", rows: 1, columns: 8)![0...7],
                framesPerSecond: Animation.animationSpeed
            )
            activeGoal = .gold
        case .gold:
            print("Victory")
            goldSprite?.tint = .lightGray
            goldSprite?.animation = nil
        }

    }

    func bodyDidExit(_ body: PhysicsBody) {

    }

    enum ActiveGoal {
        case wood, iron, gold
    }
}
