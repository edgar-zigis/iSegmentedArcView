//
//  BlinkAnimationSettings.swift
//  iSegmentedArcView
//
//  Created by Edgar Žigis on 2022-10-09.
//  Copyright © 2022 Edgar Žigis. All rights reserved.
//

import Foundation
import UIKit

public struct BlinkAnimationSettings {
    let minAlpha: CGFloat
    let maxAlpha: CGFloat
    let duration: TimeInterval
    
    public init(minAlpha: CGFloat, maxAlpha: CGFloat, duration: TimeInterval) {
        self.minAlpha = minAlpha
        self.maxAlpha = maxAlpha
        self.duration = duration
    }
}

extension BlinkAnimationSettings: Equatable {
    
    public static func ==(lhs: BlinkAnimationSettings, rhs: BlinkAnimationSettings) -> Bool {
        lhs.minAlpha == rhs.minAlpha &&
        lhs.maxAlpha == rhs.maxAlpha &&
        lhs.duration == rhs.duration
    }
}
