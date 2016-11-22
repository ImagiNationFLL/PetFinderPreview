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
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickTapped(_ sender: Any) {
        let click = Bundle.main.url(forResource: "click", withExtension: "wav")!

        do {
            player = try AVAudioPlayer(contentsOf: click)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        } catch let error {
            print(error.localizedDescription)
        }
        print("got in here")
    }

}

