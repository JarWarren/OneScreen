//
// Created by Jared Warren on 9/5/21.
//

import Foundation
import WarrenEngine

class EndGoalBehavior: Behavior, PhysicsBodyDelegate {
    weak var entity: Entity?
    weak var sprite: Sprite?
    weak var body: PhysicsBody?

    func behaviorWillStart() {
        sprite = getSprite()
        body = getPhysicsBody()
        body?.delegate = self
    }

    func update(_ deltaTime: TimeInterval) {

    }

    func behaviorWillTerminate() {
    }

    func bodyDidEnter(_ body: PhysicsBody) {
        guard let sheet = SpriteSheet(fileName: "End (Pressed) (64x64)", rows: 1, columns: 8) else { return }
        removeComponentFromEntity(body)
        sprite?.animation = Animation(textures: sheet[0...7], framesPerSecond: 16, completion: {
            print("Complete")
        })
    }

    func bodyDidExit(_ body: PhysicsBody) {

    }
}
