//
//  SKPhysicsBody+Outlaw.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/16/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit
import Outlaw
import OutlawCoreGraphics


// NOTE: extensions on SKPhysicsBody don't work as you will get an 
//       "unrecognized selector" error sent to an instance of 
//       "PKPhysicsBody".


// NOTE: because of the exception, use this class method to 
//       serialize instead
extension SKPhysicsBody /* Serializable */ {
    public static func serialize(_ body: SKPhysicsBody) -> [String: Any] {
        var result = [String: Any]()
        
        result["affectedByGravity"] = body.affectedByGravity
        result["allowsRotation"] = body.allowsRotation
        result["isDynamic"] = body.isDynamic
        result["mass"] = body.mass
        result["density"] = body.density
        result["friction"] = body.friction
        result["restitution"] = body.restitution
        result["linearDamping"] = body.linearDamping
        result["angularDamping"] = body.angularDamping
        result["categoryBitMask"] = body.categoryBitMask
        result["collisionBitMask"] = body.collisionBitMask
        result["usesPreciseCollisionDetection"] = body.usesPreciseCollisionDetection
        result["contactTestBitMask"] = body.contactTestBitMask
        result["velocity"] = body.velocity.serialized() as [String: CGFloat]
        result["angularVelocity"] = body.angularVelocity
        result["isResting"] = body.isResting
        if #available(OSX 10.10, *) {
            result["fieldBitMask"] = body.fieldBitMask
            result["charge"] = body.charge
            result["pinned"] = body.pinned
        }
// TODO: implement joint serialization??
//        if !body.joints.isEmpty {
//            var joints = [[String: Any]]()
//            for joint in body.joints {
//                joints.append(joint.serialized())
//            }
//
//            result["joints"] = joints
//        }
        
        return result
    }
}

// NOTE: because of the exception, use this class method to 
//       update instead
extension SKPhysicsBody /* Updatable */ {
    public static func update(_ body: SKPhysicsBody, with object: Extractable) throws {
        if let affectedByGravity: Bool = object.value(for: "affectedByGravity") {
            body.affectedByGravity = affectedByGravity
        }
        if let allowsRotation: Bool = object.value(for: "allowsRotation") {
            body.allowsRotation = allowsRotation
        }
        if let isDynamic: Bool = object.value(for: "isDynamic") {
            body.isDynamic = isDynamic
        }
        if let mass: CGFloat = object.value(for: "mass") {
            body.mass = mass
        }
        if let density: CGFloat = object.value(for: "density") {
            body.density = density
        }
        if let friction: CGFloat = object.value(for: "friction") {
            body.friction = friction
        }
        if let restitution: CGFloat = object.value(for: "restitution") {
            body.restitution = restitution
        }
        if let linearDamping: CGFloat = object.value(for: "linearDamping") {
            body.linearDamping = linearDamping
        }
        if let angularDamping: CGFloat = object.value(for: "angularDamping") {
            body.angularDamping = angularDamping
        }
        if let categoryBitMask: UInt32 = object.value(for: "categoryBitMask") {
            body.categoryBitMask = categoryBitMask
        }
        if let collisionBitMask: UInt32 = object.value(for: "collisionBitMask") {
            body.collisionBitMask = collisionBitMask
        }
        if let usesPreciseCollisionDetection: Bool = object.value(for: "usesPreciseCollisionDetection") {
            body.usesPreciseCollisionDetection = usesPreciseCollisionDetection
        }
        if let contactTestBitMask: UInt32 = object.value(for: "contactTestBitMask") {
            body.contactTestBitMask = contactTestBitMask
        }
        if let velocity: CGVector = object.value(for: "velocity") {
            body.velocity = velocity
        }
        if let angularVelocity: CGFloat = object.value(for: "angularVelocity") {
            body.angularVelocity = angularVelocity
        }
        if let isResting: Bool = object.value(for: "isResting") {
            body.isResting = isResting
        }
        if #available(OSX 10.10, *) {
            if let fieldBitMask: UInt32 = object.value(for: "fieldBitMask") {
                body.fieldBitMask = fieldBitMask
            }
            if let charge: CGFloat = object.value(for: "charge") {
                body.charge = charge
            }
            if let pinned: Bool = object.value(for: "pinned") {
                body.pinned = pinned
            }
        }
// TODO: implement joint updates??
//        if let joints: [SKPhysicsJoint] = object.value(for: "joints") {
//            body.joints = joints
//        }
    }
}
