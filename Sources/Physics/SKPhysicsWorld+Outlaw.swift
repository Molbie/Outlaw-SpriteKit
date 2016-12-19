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
    public struct ExtractableKeys {
        public static let gravity = "gravity"
        public static let speed = "speed"
    }
}

// NOTE: because of the exception, use this class method to 
//       serialize instead
extension SKPhysicsWorld /* Serializable */ {
    public static func serialize(_ world: SKPhysicsWorld) -> [String: Any] {
        typealias keys = SKPhysicsWorld.ExtractableKeys
        
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
        typealias keys = SKPhysicsWorld.ExtractableKeys
        
        if let gravity: CGVector = try? object.value(for: keys.gravity) {
            world.gravity = gravity
        }
        if let speed: CGFloat = try? object.value(for: keys.speed) {
            world.speed = speed
        }
    }
}
