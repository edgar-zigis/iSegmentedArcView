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
       
    }
}
