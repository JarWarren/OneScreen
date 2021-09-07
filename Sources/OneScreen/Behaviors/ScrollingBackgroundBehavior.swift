//
// Created by Jared Warren on 9/4/21.
//

import Foundation
import WarrenEngine

class ScrollingBackgroundBehavior: Behavior {
    weak var entity: Entity?
    private let height = Window.height
    private let width = Window.width
    var sprites: [Sprite] = []

    init(texture: Texture) {
        sprites.append(
            contentsOf: [
                Sprite(texture: texture, width: Int32(width), height: Int32(height), zPosition: -1),
                Sprite(texture: texture, width: Int32(width), height: Int32(height), zPosition: -1),
                Sprite(texture: texture, width: Int32(width), height: Int32(height), zPosition: -1)
            ]
        )
    }

    func behaviorWillStart() {
        sprites.forEach(addComponentToEntity)
        sprites[0].offset.y -= height * 2
        sprites[1].offset.y -= height
    }

    func update(_ deltaTime: TimeInterval) {
        sprites.forEach { sprite in
            sprite.offset.y += 1
            if sprite.offset.y > height {
                sprite.offset.y -= height * 2
            }
        }
    }

    func behaviorWillTerminate() {
    }
}
