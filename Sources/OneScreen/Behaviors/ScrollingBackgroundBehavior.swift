//
// Created by Jared Warren on 9/4/21.
//

import Foundation
import WarrenEngine

class ScrollingBackgroundBehavior: Behavior {
    weak var entity: Entity?
    var sprites: [Sprite] = []

    init(texture: Texture) {
        sprites.append(
            contentsOf: [
                Sprite(texture: texture, width: Int32(Window.width), height: Int32(Window.height), zPosition: -1),
                Sprite(texture: texture, width: Int32(Window.width), height: Int32(Window.height), zPosition: -1),
                Sprite(texture: texture, width: Int32(Window.width), height: Int32(Window.height), zPosition: -1)
            ]
        )
    }

    func behaviorWillStart() {
        sprites.forEach(addComponentToEntity)
        sprites[0].offset.y -= Window.height * 2
        sprites[1].offset.y -= Window.height
    }

    func update(_ deltaTime: TimeInterval) {
        sprites.forEach { sprite in
            sprite.offset.y += 1
            if sprite.offset.y > Window.height {
                sprite.offset.y -= Window.height * 2
            }
        }
    }

    func behaviorWillTerminate() {
    }
}
