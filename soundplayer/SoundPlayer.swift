//
//  SoundPlayer.swift
//  soundplayer
//
//  Created by paw on 01.11.2020.
//  Copyright © 2020 Paul Moryakov. All rights reserved.
// You can copy this code and paste into your project

import AVFoundation
struct Soundplayer {
    private var soundToPlay: URL?
    private var audioPlayer = AVAudioPlayer()
    init?(forFileName fileName: String, withExtension: String){
        guard soundToPlay != nil else {return nil}
        soundToPlay = Bundle.main.url(forResource: fileName, withExtension: withExtension)
        do {
             audioPlayer = try AVAudioPlayer(contentsOf: soundToPlay!)
         audioPlayer.prepareToPlay()
         } catch {
             print("couldn't load sound file")
         }
    }
    var isPlaying: Bool {return audioPlayer.isPlaying}
    
    func play(){audioPlayer.play()}
    func pause(){audioPlayer.pause()}
    func stop(){audioPlayer.stop()}
    func playIfStoppedOrPaused(){if !isPlaying {play()}}
    func stopIfPlaying(){if isPlaying {stop()}}
    func pauseIfPlaying(){if isPlaying {pause()}}
    func playIfStoppedOrPausedOrStopIfPlaying(){if !isPlaying {play()}else{stop()}}
}
