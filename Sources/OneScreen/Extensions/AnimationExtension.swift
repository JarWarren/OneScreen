//
// Created by Jared Warren on 9/5/21.
//

import Foundation
import WarrenEngine

extension Animation {
    static let animationSpeed = 20
    static let goalIdleSheet = SpriteSheet(fileName: "Checkpoint (Flag Idle)(64x64)", rows: 1, columns: 10)!

    static let brownSpikeBlink = Animation(
        textures: SpriteSheet(fileName: "Blink (54x52)", rows: 1, columns: 4)![0...3],
        framesPerSecond: animationSpeed
    )

    static let fire = Animation(
        textures: SpriteSheet(fileName: "On (16x32)", rows: 1, columns: 3)![0...2],
        framesPerSecond: animationSpeed
    )

    static let floatingPlatform = Animation(
        textures: SpriteSheet(fileName: "On (32x10)", rows: 1, columns: 4)![0...3],
        framesPerSecond: animationSpeed
    )

    static let frogDeath = Animation(
        textures: SpriteSheet(fileName: "Disappearing (96x96)", rows: 1, columns: 7)![0...6],
        framesPerSecond: animationSpeed,
        shouldLoop: false
    )

    static let frogIdle = Animation(
        textures: SpriteSheet(fileName: "Idle (32x32)", rows: 1, columns: 11)![0...10],
        framesPerSecond: animationSpeed
    )

    static let frogRun = Animation(
        textures: SpriteSheet(fileName: "Run (32x32)", rows: 1, columns: 12)![0...11],
        framesPerSecond: animationSpeed
    )

    static let goalIdle = Animation(
        textures: goalIdleSheet[0...9],
        framesPerSecond: animationSpeed
    )

    static let saw = Animation(
        textures: SpriteSheet(fileName: "On (38x38)", rows: 1, columns: 8)![0...7],
        framesPerSecond: animationSpeed
    )

    static let strawberry = Animation(
        textures: SpriteSheet(fileName: "Strawberry", rows: 1, columns: 17)![0...16],
        framesPerSecond: animationSpeed
    )

    static let thwompBlink = Animation(
        textures: SpriteSheet(fileName: "Blink (42x42)", rows: 1, columns: 4)![0...3],
        framesPerSecond: animationSpeed
    )
}