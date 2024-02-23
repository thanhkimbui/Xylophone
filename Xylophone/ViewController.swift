//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func keyPressed(_ sender: UIButton) {
//        print(sender.currentTitle!)
//        print(sender.layer.opacity)
        playSound(soundText: sender.currentTitle!)
        sender.layer.opacity = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(20), execute: {
            sender.layer.opacity = 1.0
        })
    }
    
    func playSound(soundText: String) {
        let url = Bundle.main.url(forResource: soundText, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    }
    
}

