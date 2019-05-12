//
//  SKPhysicsWorld+Outlaw.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/16/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit
import Outlaw
import OutlawCoreGraphics


// NOTE: extensions on SKPhysicsWorld don't work as you will get an 
//       "unrecognized selector" error sent to an instance of 
//       "PKPhysicsWorld".

public extension SKPhysicsWorld {
    struct ExtractableKeys {
        public static let gravity = "gravity"
        public static let speed = "speed"
    }
    private typealias keys = SKPhysicsWorld.ExtractableKeys
}

// NOTE: because of the exception, use this class method to 
//       serialize instead
extension SKPhysicsWorld /* Serializable */ {
    public static func serialize(_ world: SKPhysicsWorld) -> [String: Any] {
        var result = [String: Any]()
        result[keys.gravity] = world.gravity.serialized()
        result[keys.speed] = world.speed
        
        return result
    }
}

// NOTE: because of the exception, use this class method to 
//       update instead
extension SKPhysicsWorld /* Updatable */ {
    public static func update(_ world: SKPhysicsWorld, with object: Extractable) throws {
        if let gravity: CGVector = object.optional(for: keys.gravity) {
            world.gravity = gravity
        }
        if let speed: CGFloat = object.optional(for: keys.speed) {
            world.speed = speed
        }
    }
}
