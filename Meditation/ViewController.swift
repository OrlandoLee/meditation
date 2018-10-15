//
//  ViewController.swift
//  Meditation
//
//  Created by orlandolee on 10/14/18.
//  Copyright © 2018 Orlando. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    @IBAction func touchCard(_ sender: UIButton) {
        playMusic(withMusicUrl: "temp", on: sender)
    }
    
    func playMusic(withMusicUrl musicUrl: String, on button: UIButton) {
        print("play music")
        let audioURL = URL(string: "https://cf-hls-media.sndcdn.com/media/4949053/5108713/qQH0Z0azK6y3.128.mp3?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiKjovL2NmLWhscy1tZWRpYS5zbmRjZG4uY29tL21lZGlhLyovKi9xUUgwWjBheks2eTMuMTI4Lm1wMyIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTUzOTU2NTM1M319fV19&Signature=f5Pwp15drdqGiK7gPkKm8WxUE0D0kXnNt9AFJFIO-puPNw34ks7-R~fMIUy5EzyZIjU0DWauY7RDuBNCpXJouMcmqJwigyqcg9cVab~uUN8SnJqXL8CqHwMMV0bXsEB4c4XrXlSHd-SQURSbDor2W08-PABEF9~VfPtZ1laFs1jfMpi3xQUbGJ9iyj6YvqkAvPHm7WQdM5IjNjq~ZyCbDU0ZNk7UZerU32TertRm6E1GeU61jDWAD8Qi8kfWn~iwYZXRnuhK3x5PPUsuxE-1kvrqwfW1k3yhaR8366l3SdC3kUvy8QRuQAiIpl2loWwTubyBQUteU4lDz2oMV6UuCQ__&Key-Pair-Id=APKAJAGZ7VMH2PFPW6UQ")
        let player = AVPlayer(url: audioURL!)
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.bounds
        self.view.layer.addSublayer(playerLayer)
        player.play()
    }
}

