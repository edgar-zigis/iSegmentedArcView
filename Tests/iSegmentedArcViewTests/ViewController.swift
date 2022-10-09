//
//  ViewController.swift
//  iSegmentedArcViewTest
//
//  Created by Edgar Žigis on 2021-10-20.
//  Copyright © 2021 Edgar Žigis. All rights reserved.
//

import UIKit
import iSegmentedArcView

class ViewController: UIViewController {

    @IBOutlet weak var slider: iSegmentedArcView!
    @IBOutlet weak var versionWithoutStoryBoardButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.segments = [
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
    
    @IBAction func onVersionWithoutStoryBoard(_ sender: Any) {
        present(ViewControllerWithoutStoryBoard(), animated: true, completion: nil)
    }
}
