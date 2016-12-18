//
//  SKTransitionDirection+String.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/17/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit


public extension SKTransitionDirection {
    public struct StringValues {
        public static let up = "up"
        public static let down = "down"
        public static let right = "right"
        public static let left = "left"
    }
}

public extension SKTransitionDirection {
    public init?(stringValue: String) {
        typealias strings = SKTransitionDirection.StringValues
        
        switch stringValue.lowercased() {
            case strings.up:
                self = .up
            case strings.down:
                self = .down
            case strings.right:
                self = .right
            case strings.left:
                self = .left
            default:
                return nil
        }
    }
    
    public var stringValue: String {
        typealias strings = SKTransitionDirection.StringValues
        
        let result: String
        switch self {
            case .up:
                result = strings.up
            case .down:
                result = strings.down
            case .right:
                result = strings.right
            case .left:
                result = strings.left
        }
        
        return result
    }
}
