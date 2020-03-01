//
//  ViewController.swift
//  VideoStream
//
//  Created by Sambit Das on 30/01/20.
//  Copyright © 2020 Sambit Das. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func playVideo(_ sender: AnyObject) {
        guard let url = URL(string: "https://firebasestorage.googleapis.com/v0/b/videostreaming-33685.appspot.com/o/'Despacito'%20_%20Hindi%20version%20cover%20song%20_%20Justin%20Bieber%20-%20YouTube%20(720p).mp4?alt=media&token=aa837bfa-e0ab-4663-adc4-adf358ec29c7") else {
            return
        }
        let player = AVPlayer(url: url)
        
       let Controller = AVPlayerViewController()
        Controller.player = player
        present(Controller, animated: true)
        player.play()
        print("successful")
    
    }
    
}

