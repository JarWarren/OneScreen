//
// Created by Jared Warren on 9/4/21.
//

import Foundation
import WarrenEngine

extension Texture {
    static let background = Texture(fileName: "background")
    static let brownSpikeIdle = Texture(fileName: "Idle Brown Spike")

    static let goal = Texture(fileName: "Checkpoint (No Flag)")
    static let goalCaptured = Animation.goalIdleSheet[7]

    static let terrain = Texture(fileName: "terrain")
    static let trophy = Texture(fileName: "End (Idle)")
    static let thwomp = Texture(fileName: "Idle")
}