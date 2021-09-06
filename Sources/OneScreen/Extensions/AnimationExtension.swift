//
// Created by Jared Warren on 9/5/21.
//

import Foundation
import WarrenEngine

extension Animation {
    static let floatingPlatform = Animation(
        textures: SpriteSheet(fileName: "On (32x10)", rows: 1, columns: 4)![0...3],
        framesPerSecond: 16
    )

    static let frogIdle = Animation(
        textures: SpriteSheet(fileName: "Idle (32x32)", rows: 1, columns: 11)![0...10],
        framesPerSecond: 16
    )

    static let frogRun = Animation(
        textures: SpriteSheet(fileName: "Run (32x32)", rows: 1, columns: 12)![0...11],
        framesPerSecond: 16
    )
}