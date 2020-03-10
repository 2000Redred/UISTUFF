//
//  GameViewController.swift
//  UIStuff
//
//  Created by Jory Finewax on 2020-03-09.
//  Copyright © 2020 Jory Finewax. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    //var timer:Timer?
    //var timeLeft = 60
    
                // let timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(onTimerFires), userInfo: nil, repeats: true)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
            

        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    //@objc func onTimerFires()
    //{
       // timeLeft -= 1
        //timeLabel.text = "\(timeLeft) seconds left"

      //  if timeLeft <= 0 {
       //     timer.invalidate()
         //   timer = nil
       // }
    //}
    
    @IBAction func ExitGame(_ sender: Any) {
        exit(0)
    }
    
}
