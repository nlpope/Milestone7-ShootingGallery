//  File: Constants+Utils.swift
//  Project: Milestone7-ShootingGallery
//  Created by: Noah Pope on 3/22/25.

import Foundation

enum EnvironmentImageKeys
{
    static let woodenBackground = "wood-background"
    static let grassAndTrees    = "grass-trees"
    static let waterBackground  = "water-bg"
    static let waterForeground  = "water-fg"
    static let curtains         = "curtains"
    
    static let cursor           = "cursor"
    static let zeroBullets      = "shots0"
    static let oneBullet        = "shots1"
    static let twoBullets       = "shots2"
    static let threeBullets     = "shots3"
    
    static let gameOver         = "game-over"
}

enum TargetImageKeys
{
    static let plainTarget      = "target0"
    static let goodDuck1        = "target1"
    static let goodDuck2        = "target2"
    static let badDuck1         = "target3"
    
    static let plainTargetStick = "stick1"
    static let goodDuckStick    = "stick0"
    static let badDuckStick     = "stick2"
}

enum SoundKeys
{
    static let shot             = "shot"
    static let outOfAmmo        = "empty"
    static let reload           = "reload"
}

enum FontKeys
{
    static let chalkduster      = "Chalkduster"
}
