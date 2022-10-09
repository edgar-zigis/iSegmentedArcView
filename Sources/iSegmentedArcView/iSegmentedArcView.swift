//
//  iSegmentedArcView.swift
//  iSegmentedArcView
//
//  Created by Edgar Žigis on 2021-11-10.
//  Copyright © 2021 Edgar Žigis. All rights reserved.
//

import UIKit

@IBDesignable
public class iSegmentedArcView: UIView {
    
    //  MARK: - Open variables -
    
    /**
     * Sets starting angle in degrees where segments start to draw
     */
    @IBInspectable
    open var startAngle: Double = 150 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    /**
     * Sets angle in degrees for which segments are being drawn starting from the startAngle
     */
    @IBInspectable
    open var sweepAngle: Double = 240 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    /**
     * Sets distance between segments
     */
    @IBInspectable
    open var segmentSeparationAngle: CGFloat = 9 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    /**
     * Sets segment thickness
     */
    @IBInspectable
    open var segmentThickness: CGFloat = 7.5 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    /**
     * Sets the title text
     */
    @IBInspectable
    open var title: String = "" {
        didSet {
            setNeedsDisplay()
        }
    }
    
    /**
     * Sets the value text
     */
    @IBInspectable
    open var value: String = "" {
        didSet {
            setNeedsDisplay()
        }
    }
    
    /**
     * Sets the color of the title text
     */
    @IBInspectable
    open var titleTextColor: UIColor = .darkGray {
        didSet {
            setNeedsDisplay()
        }
    }
    
    /**
     * Sets the color of the value text
     */
    @IBInspectable
    open var valueTextColor: UIColor = .black {
        didSet {
            setNeedsDisplay()
        }
    }
    
    /**
     * Sets the font of the title text
     */
    @IBInspectable
    open var titleFont: UIFont = .systemFont(ofSize: 20) {
        didSet {
            setNeedsDisplay()
        }
    }
    
    /**
     * Sets the font of the value text
     */
    @IBInspectable
    open var valueFont: UIFont = .boldSystemFont(ofSize: 55) {
        didSet {
            setNeedsDisplay()
        }
    }
    
    /**
     * Sets the title vertical offset
     */
    @IBInspectable
    open var titleVerticalOffset: CGFloat = 0 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    /**
     * Sets the value vertical offset
     */
    @IBInspectable
    open var valueVerticalOffset: CGFloat = 0 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    /**
     * Sets the blinking animation settings
     */
    open var blinkAnimationSettings: BlinkAnimationSettings = BlinkAnimationSettings(
        minAlpha: 0.4,
        maxAlpha: 1,
        duration: 2
    )
    
    /**
     * Sets the segments
     */
    open var segments: [ArcSegment] = [] {
        didSet {
            setNeedsDisplay()
        }
    }
    
    /**
     * Sets the possibility to use custom angles for the segments
     */
    @IBInspectable
    open var useCustomSweepAgles: Bool = false {
        didSet {
            setNeedsDisplay()
        }
    }
}
