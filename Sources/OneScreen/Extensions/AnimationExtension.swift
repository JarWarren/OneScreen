//
// Created by Jared Warren on 9/5/21.
//

import Foundation
import WarrenEngine

extension Animation {
    static private let frogIdleSheet = SpriteSheet(fileName: "Idle (32x32)", rows: 1, columns: 11)!
    static private let frogRunSheet = SpriteSheet(fileName: "Run (32x32)", rows: 1, columns: 12)!
    static let frogIdle = Animation(textures: frogIdleSheet[0...10], framesPerSecond: 16, shouldLoop: true)
    static let frogRun = Animation(textures: frogRunSheet[0...11], framesPerSecond: 16, shouldLoop: true)
}