//  File: GameScene.swift
//  Project: Milestone7-ShootingGallery
//  Created by: Noah Pope on 3/22/25.

import SpriteKit
import GameplayKit
import AVFoundation

enum ForceBadDuck { case never, always, random }

class GameScene: SKScene
{
    var gameScore: SKLabelNode!
    var shotSoundEffect: AVAudioPlayer?
    var goodDuck: SKSpriteNode!
    var badDuck: SKSpriteNode!
    var duckTypes   = [String]()
    var activeDucks = [SKSpriteNode]()
    var ammo        = [SKSpriteNode]()
    var isGameEnded = false
    var burnItAll   = false
    var timer       = time
    var lives       = 3 {
        didSet { if lives == 0 { endGame(triggeredByBadDuck: false) } }
    }
    var score       = 0 {
        didSet { gameScore.text = "Score: \(score)" }
    }
    
    //-------------------------------------//
    // MARK: GENERAL METHODS
    
    override func didMove(to view: SKView)
    {
        configureWorld()
        configureScore()
        configureLives()
    }
    
    /**
     exclude the .blendmode = .replace on everything that lays over your furthest background
     ... only relying on the zposition to push them above the bg
     ... vice versa, exclude the zposition on your furthest back bg
     ... keep in mind the auto zposition of your '.replace' furthest bg = 0 so start the overlays @ 1
     */
    
    func configureWorld()
    {
        let woodenBg            = SKSpriteNode(imageNamed: EnvironmentImageKeys.woodenBackground)
        woodenBg.position       = CGPoint(x: 512, y: 384)
        woodenBg.blendMode      = .replace
        addChild(woodenBg)
        
        let grassAndTrees       = SKSpriteNode(imageNamed: EnvironmentImageKeys.grassAndTrees)
        grassAndTrees.position  = CGPoint(x: 512, y: 384)
        grassAndTrees.zPosition = 1
        addChild(grassAndTrees)

        
        let curtains            = SKSpriteNode(imageNamed: EnvironmentImageKeys.curtains)
        curtains.position       = CGPoint(x: 512, y: 384)
        curtains.zPosition      = 2
        addChild(curtains)
    }
    
    
    func configureWater()
    {
        
    }
    
    
    func configureScore()
    {
        gameScore                           = SKLabelNode(fontNamed: FontKeys.chalkduster)
        gameScore.horizontalAlignmentMode   = .left
        gameScore.fontSize                  = 48
        gameScore.position                  = CGPoint(x: 8, y: 8)
        score                               = 0
        addChild(gameScore)
    }
    
    
    func configureLives()
    {
        
    }
    
    
    func endGame(triggeredByBadDuck: Bool = false)
    {
        
    }

    //-------------------------------------//
    // MARK: SPRITEKIT DELEGATE METHODS
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        
    }
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        
    }
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        
    }
    
    
    override func update(_ currentTime: TimeInterval)
    {
        
    }
}
