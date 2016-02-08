//
//  ViewController.swift
//  craps
//
//  Created by miguel hernandez on 2/7/16.
//  Copyright © 2016 com.securecodetips. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
   
    @IBOutlet var diceImage1: UIImageView!
    
    
    @IBOutlet var diceImage2: UIImageView!
    //var audioPlayer = AVAudioPlayer()
     var audioPlayer:AVAudioPlayer!
    @IBAction func roll(sender: AnyObject) {
        
       // let soundURL = NSBundle.mainBundle().URLForResource("DICE.mp3", withExtension: "mp3")
       // audioPlayer = AVAudioPlayer(contentsOfURL?: soundURL, error: nil)
       // audioPlayer.play()
        //var mySound = NSSound(named:"DICE.mp3")
       // mySound.play()
        let audioFilePath = NSBundle.mainBundle().pathForResource("DICE", ofType: "mp3")
        if audioFilePath != nil {
            let audioFileUrl = NSURL.fileURLWithPath(audioFilePath!)
            do{
                try audioPlayer = AVAudioPlayer(contentsOfURL: audioFileUrl, fileTypeHint: nil)
            }
                catch {
                }
                audioPlayer.play()
            }
        
      let dic1 =  arc4random_uniform(UInt32(6))+1
      let dic2 = arc4random_uniform(UInt32(6))+1
        
        let poc1 = Int(arc4random_uniform(UInt32(600))+5)
        let poc2 = Int(arc4random_uniform(UInt32(600))+5)
        
        let poc3 = Int(arc4random_uniform(UInt32(600))+5)
        let poc4 = Int(arc4random_uniform(UInt32(600))+5)
        //diceImage1.image=UIImage(named:"\(dic1).png")
        //diceImage2.image=UIImage(named:"\(dic2).png")
        
      
        let image1 : UIImage = UIImage(named:"\(dic1).png")!
         diceImage1.removeFromSuperview()
        diceImage1 = UIImageView(image: image1)
       
        diceImage1.frame = CGRect(x: poc1, y: poc2, width: 50, height: 50)
        view.addSubview(diceImage1)
        //diceImage1.image = nil
        
        let image2 : UIImage = UIImage(named:"\(dic2).png")!
        diceImage2.removeFromSuperview()
        diceImage2 = UIImageView(image: image2)
        
        diceImage2.frame = CGRect(x: poc3, y: poc4, width: 50, height: 50)
        view.addSubview(diceImage2)
       // diceImage2.image = nil
      
        print("\(dic1)  \(dic2)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "finalBackground.png")!)
        // Do any additional setup after loading the view, typically from a nib.
       NSThread.sleepForTimeInterval(5)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

