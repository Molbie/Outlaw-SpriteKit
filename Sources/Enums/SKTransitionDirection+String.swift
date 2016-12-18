//
//  SKTransitionDirection+String.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/17/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit


public extension SKTransitionDirection {
    public init?(stringValue: String) {
        switch stringValue.lowercased() {
            case "up":
                self = .up
            case "down":
                self = .down
            case "right":
                self = .right
            case "left":
                self = .left
            default:
                return nil
        }
    }
    
    public var stringValue: String {
        let result: String
        
        switch self {
            case .up:
                result = "up"
            case .down:
                result = "down"
            case .right:
                result = "right"
            case .left:
                result = "left"
        }
        
        return result
    }
}
