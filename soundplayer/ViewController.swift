//
//  ViewController.swift
//  soundplayer
//
//  Created by paw on 03.03.2020.
//  Copyright © 2020 Paul Moryakov. All rights reserved.
//

import UIKit
import AVFoundation
import ARKit
class ViewController: UIViewController, ARSCNViewDelegate, ARSessionDelegate {
    
    let player = Soundplayer(forFileName: "5", withExtension: "m4a")
    @IBAction func start(_ sender: Any) {
        player!.play()
    }
    
    override func viewDidLoad() {
     
}

}

