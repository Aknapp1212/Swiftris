//
//  GameScene.swift
//  Swiftris
//
//  Created by Adrian Knapp on 2/11/16.
//  Copyright (c) 2016 PIGStudio. All rights reserved.
//

import SpriteKit

let TickLengthlevelOne = NSTimeInterval(600)


class GameScene: SKScene {
    
    var tick:(() -> ())?
    var tickLengthMillis = TickLengthlevelOne
    var lastTick:NSDate?
    
    required init(coder aDecoder: NSCoder){
        fatalError("NSCoder not Supported")
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        
        anchorPoint = CGPoint(x:0 , y: 1.0)
        
        let background = SKSpriteNode(imageNamed: "background")
        background.position = CGPoint(x: 0, y: 0)
        background.anchorPoint = CGPoint(x: 0, y: 1.0)
        addChild(background)
    }
    
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        
        
        guard let lastTick = lastTick else{
            return
        }
        
        let timePassed = lastTick.timeIntervalSinceNow * -1000.0
        if timePassed > tickLengthMillis {
            self.lastTick = NSDate()
            tick?()
        }
    }
    func startTicking(){
        lastTick = NSDate()
    }
    func stopTicking(){
        lastTick = nil
    }
}
