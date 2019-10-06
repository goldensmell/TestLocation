//
//  ViewController.swift
//  TestLocation
//
//  Created by 임현수 on 01/07/2019.
//  Copyright © 2019 임현수. All rights reserved.
//

import UIKit
import AVFoundation
import AudioToolbox

class ViewController: UIViewController, AVAudioPlayerDelegate {

    var backgroundAudioPlayer :AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        try? AVAudioSession.sharedInstance().setCategory(.playback, options: .mixWithOthers)
        try? AVAudioSession.sharedInstance().setActive(true)
        
        if let path = Bundle.main.path(forResource: "silent", ofType: "mp3") {
            let url = URL.init(fileURLWithPath:path)
            backgroundAudioPlayer = try? AVAudioPlayer.init(contentsOf: url)
            backgroundAudioPlayer?.numberOfLoops = -1
            backgroundAudioPlayer?.play()
            print("play silent music");
        }
    }
    
    //pragma mark - Sound Stuff
    


}

