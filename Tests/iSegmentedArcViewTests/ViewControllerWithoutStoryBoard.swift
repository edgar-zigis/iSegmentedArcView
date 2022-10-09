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
        segmentedArcView.frame = CGRect(x: 16, y: 60, width: UIScreen.main.bounds.width - 32, height: UIScreen.main.bounds.width - 32)
        applyStyle(to: segmentedArcView)
        view.addSubview(segmentedArcView)
        
        view.backgroundColor = .white
    }
    
    private func applyStyle(to v: iSegmentedArcView) {
        v.title = "Outstanding\n      credit"
        v.value = "150€"
        v.segments = [
            ArcSegment(color: UIColor(red: 235/255, green: 63/255, blue: 37/255, alpha: 1)),
            ArcSegment(color: UIColor(red: 235/255, green: 63/255, blue: 37/255, alpha: 1)),
            ArcSegment(color: UIColor(red: 239/255, green: 201/255, blue: 86/255, alpha: 1), animate: true),
            ArcSegment(color: UIColor(red: 229/255, green: 229/255, blue: 229/255, alpha: 1))
        ]
    }
}
