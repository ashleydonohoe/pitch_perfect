//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Gabriele on 2/15/16.
//  Copyright © 2016 Ashley Donohoe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: AnyObject) {
        print("This button has been pressed.")
        recordingLabel.text = "Recording in progress"
    }
    @IBAction func stopRecording(sender: AnyObject) {
        print("Stop recording button pressed")
    }
}

//IBOutlet is a UI element, while an IBAction is something that happens to a UI element in the app, such as a function. The round circles show connections.