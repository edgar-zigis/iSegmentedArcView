//
//  ArcSegment.swift
//  iSegmentedArcView
//
//  Created by Edgar Žigis on 2022-10-09.
//  Copyright © 2022 Edgar Žigis. All rights reserved.
//

import Foundation
import UIKit

public struct ArcSegment {
    let gradientStart: UIColor
    let gradientEnd: UIColor
    var animate: Bool = false
    var sweepAngle: Double = 0
}
