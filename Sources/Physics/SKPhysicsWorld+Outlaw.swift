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


// NOTE: because of the exception, use this class method to 
//       serialize instead
extension SKPhysicsWorld /* Serializable */ {
    public static func serialize(_ world: SKPhysicsWorld) -> [String: Any] {
        var result = [String: Any]()
        
        result["gravity" ] = world.gravity.serialized() as [String: CGFloat]
        result["speed" ] = world.speed
        
        return result
    }
}

// NOTE: because of the exception, use this class method to 
//       update instead
extension SKPhysicsWorld /* Updatable */ {
    public static func update(_ world: SKPhysicsWorld, with object: Extractable) throws {
        if let gravity: CGVector = try? object.value(for: "gravity") {
            world.gravity = gravity
        }
        if let speed: CGFloat = try? object.value(for: "speed") {
            world.speed = speed
        }
    }
}
