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
    }
    
    @IBAction func onVersionWithoutStoryBoard(_ sender: Any) {
        present(ViewControllerWithoutStoryBoard(), animated: true, completion: nil)
    }
}