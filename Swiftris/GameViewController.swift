//
//  GameViewController.swift
//  Swiftris
//
//  Created by Adrian Knapp on 2/11/16.
//  Copyright (c) 2016 PIGStudio. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    var scene: GameScene!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // configures view
        let skView = view as! SKView
        skView.multipleTouchEnabled = false
        
        // create and configure the scene
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFit
        
        //Presents Scene
        
        skView.presentScene(scene)
        

    }

   

   


    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
