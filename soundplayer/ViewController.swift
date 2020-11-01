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
    let popSound = Bundle.main.url(forResource: "5", withExtension: "m4a")
    var audioPlayer = AVAudioPlayer()

    @IBAction func start(_ sender: Any) {
        audioPlayer.play()
    }
    override func viewDidLoad() {
       do {
            audioPlayer = try AVAudioPlayer(contentsOf: popSound!)
        audioPlayer.prepareToPlay()                                     
            audioPlayer.play()
        
        } catch {
            print("couldn't load sound file")
        }
}

}

