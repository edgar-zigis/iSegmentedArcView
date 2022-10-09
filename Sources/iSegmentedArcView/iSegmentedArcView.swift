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
    open var segmentSeparationAngle: Double = 9 {
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
    
    //  MARK: - UI methods -
    
    public override func draw(_ rect: CGRect) {
        super.draw(rect)
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }

        let segmentSweepAngle = (sweepAngle - (Double((segments.count - 1)) * segmentSeparationAngle)) / Double(segments.count)
        
        var startAngle = self.startAngle
        for (index, segment) in segments.enumerated() {
            let sweepAngle = useCustomSweepAgles ? segment.sweepAngle : segmentSweepAngle
            drawArcSegment(
                segment,
                startAngle: deg2rad(startAngle),
                endAngle: deg2rad(startAngle + sweepAngle),
                index: UInt32(index),
                rect: rect
            )
            startAngle += (sweepAngle + segmentSeparationAngle)
        }
        
        drawTitleText(in: rect, context: context)
        drawValueText(in: rect, context: context)
    }
    
    private func drawArcSegment(
        _ segment: ArcSegment,
        startAngle: Double,
        endAngle: Double,
        index: UInt32,
        rect: CGRect
    ) {
        let radius = rect.width / 2
        let segmentLayer = CAShapeLayer()
        
        let path = UIBezierPath(
            arcCenter: CGPoint(x: radius, y: radius),
            radius: radius,
            startAngle: startAngle,
            endAngle: endAngle,
            clockwise: true
        )
        
        segmentLayer.path = path.cgPath
        segmentLayer.position = CGPoint(x: bounds.midX - radius, y: bounds.midY - radius)
        segmentLayer.fillColor = UIColor.clear.cgColor
        segmentLayer.lineCap = .round
        segmentLayer.strokeColor = segment.color.cgColor
        segmentLayer.lineWidth = segmentThickness
        
        if segment.animate {
            let animation = CABasicAnimation(keyPath: "opacity")
            animation.duration = blinkAnimationSettings.duration
            animation.fromValue = blinkAnimationSettings.minAlpha
            animation.toValue = blinkAnimationSettings.maxAlpha
            animation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
            animation.repeatCount = 999
            animation.autoreverses = true
            segmentLayer.add(animation, forKey: #keyPath(CALayer.opacity))
        }
        
        layer.insertSublayer(segmentLayer, at: index)
    }
    
    private func drawTitleText(in rect: CGRect, context: CGContext) {
        //  TODO: Implement
    }
    
    private func drawValueText(in rect: CGRect, context: CGContext) {
        //  TODO: Implement
    }
    
    //  MARK: - Util methods -
    
    private func deg2rad(_ number: Double) -> Double {
        return number * .pi / 180
    }
}
