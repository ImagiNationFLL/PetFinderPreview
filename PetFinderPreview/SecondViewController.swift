//
//  SecondViewController.swift
//  PetFinderPreview
//
//  Created by Brice Dobry on 11/21/16.
//  Copyright © 2016 obycode. All rights reserved.
//

import UIKit
import AVFoundation

class SecondViewController: UIViewController {
    
    // make sure to add this sound to your project
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickTapped(_ sender: Any) {
        let clickSound = Bundle.main.path(forResource: "click", ofType: "wav")
            
        var audioFileUrl = NSURL.fileURL(withPath: clickSound!)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: clickSound! ))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
        } catch {
            print(error)
        }
        audioPlayer.play()
        print("got in here")
    }

}

