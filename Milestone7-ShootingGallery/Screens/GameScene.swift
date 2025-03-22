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
    var livesImages = [SKSpriteNode]()
    var isGameEnded = false
    var burnItAll   = false
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
    
    
    func configureWorld()
    {
        let background          = SKSpriteNode(imageNamed: EnvironmentImageKeys.woodenBackground)
        background.position     = CGPoint(x: 512, y: 384)
        background.blendMode    = .replace
        background.zPosition    = -1
        addChild(background)
    }
    
    
    func configureScore()
    {
        
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
