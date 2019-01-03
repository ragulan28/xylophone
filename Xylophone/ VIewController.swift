//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var audioPlayer:AVAudioPlayer!
    let sountArray = ["note1","note2","note3","note4","note5","note6","note7",]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func dragEnter(_ sender: UIButton) {
        platSouns(soundFileName: sountArray[sender.tag-1])

    }
    
    @IBAction func primary(_ sender: UIButton) {
        platSouns(soundFileName: sountArray[sender.tag-1])

    }
    @IBAction func notePressed(_ sender: UIButton) {
        
        platSouns(soundFileName: sountArray[sender.tag-1])
        
    }
    func platSouns(soundFileName:String){
        let soundURL = Bundle.main.url(forResource:soundFileName,withExtension:"wav")
        do{
            audioPlayer=try AVAudioPlayer(contentsOf: soundURL!)
        }catch{
            print(error)
        }
        
        audioPlayer.play();
        
    }
    
  

}

