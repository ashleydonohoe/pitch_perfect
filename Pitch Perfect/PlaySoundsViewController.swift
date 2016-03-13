//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Ashley Donohoe on 3/13/16.
//  Copyright © 2016 Ashley Donohoe. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!
    var receivedAudio: RecordedAudio!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        /*
        if let filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3") {
            let filePathURL = NSURL.fileURLWithPath(filePath)
        } else {
            print("The file path is empty")
        }
*/
        
        audioPlayer = try! AVAudioPlayer(contentsOfURL: receivedAudio.filePathUrl)
        audioPlayer.enableRate = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playSlow(sender: AnyObject) {
        audioPlayer.rate = 0.5
        startPlaying()
    }

    @IBAction func playFast(sender: AnyObject) {
        audioPlayer.rate = 1.5
        startPlaying()
    }
    
    func startPlaying() {
        audioPlayer.stop()
        audioPlayer.play()
    }
    
    @IBAction func stopPlaying(sender: AnyObject) {
        audioPlayer.stop()
    }
}
