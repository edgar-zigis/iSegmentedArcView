//
//  ViewControllerWithoutStoryBoard.swift
//  iLabeledSeekSliderTest
//
//  Created by Edgar Žigis on 2021-10-20.
//  Copyright © 2021 Edgar Žigis. All rights reserved.
//

import UIKit
import iSegmentedArcView

class ViewControllerWithoutStoryBoard: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let segmentedArcView = iSegmentedArcView()
        applyStyle(to: segmentedArcView)
        view.addSubview(segmentedArcView)
        
        segmentedArcView.translatesAutoresizingMaskIntoConstraints = false
        segmentedArcView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        segmentedArcView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        segmentedArcView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -32).isActive = true
        segmentedArcView.heightAnchor.constraint(equalToConstant: 90).isActive = true
        
        view.backgroundColor = .white
    }
    
    private func applyStyle(to v: iSegmentedArcView) {
        v.segments = [
            ArcSegment(
                gradientStart: UIColor(red: 235/255, green: 63/255, blue: 37/255, alpha: 1),
                gradientEnd: UIColor(red: 235/255, green: 63/255, blue: 37/255, alpha: 1)
            ),
            ArcSegment(
                gradientStart: UIColor(red: 235/255, green: 63/255, blue: 37/255, alpha: 1),
                gradientEnd: UIColor(red: 235/255, green: 63/255, blue: 37/255, alpha: 1)
            ),
            ArcSegment(
                gradientStart: UIColor(red: 231/255, green: 221/255, blue: 186/255, alpha: 1),
                gradientEnd: UIColor(red: 239/255, green: 201/255, blue: 86/255, alpha: 1),
                animate: false
            ),
            ArcSegment(
                gradientStart: UIColor(red: 229/255, green: 229/255, blue: 229/255, alpha: 1),
                gradientEnd: UIColor(red: 211/255, green: 211/255, blue: 211/255, alpha: 1)
            )
        ]
    }
}
