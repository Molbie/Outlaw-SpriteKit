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

public extension SKPhysicsBody {
    public struct ExtractableKeys {
        public static let affectedByGravity = "affectedByGravity"
        public static let allowsRotation = "allowsRotation"
        public static let isDynamic = "isDynamic"
        public static let mass = "mass"
        public static let density = "density"
        public static let friction = "friction"
        public static let restitution = "restitution"
        public static let linearDamping = "linearDamping"
        public static let angularDamping = "angularDamping"
        public static let categoryBitMask = "categoryBitMask"
        public static let collisionBitMask = "collisionBitMask"
        public static let usesPreciseCollisionDetection = "usesPreciseCollisionDetection"
        public static let contactTestBitMask = "contactTestBitMask"
        public static let velocity = "velocity"
        public static let angularVelocity = "angularVelocity"
        public static let isResting = "isResting"
        public static let fieldBitMask = "fieldBitMask"
        public static let charge = "charge"
        public static let pinned = "pinned"
        public static let joints = "joints"
    }
}

// NOTE: because of the exception, use this class method to 
//       serialize instead
extension SKPhysicsBody /* Serializable */ {
    public static func serialize(_ body: SKPhysicsBody) -> [String: Any] {
        typealias keys = SKPhysicsBody.ExtractableKeys
        
        var result = [String: Any]()
        result[keys.affectedByGravity] = body.affectedByGravity
        result[keys.allowsRotation] = body.allowsRotation
        result[keys.isDynamic] = body.isDynamic
        result[keys.mass] = body.mass
        result[keys.density] = body.density
        result[keys.friction] = body.friction
        result[keys.restitution] = body.restitution
        result[keys.linearDamping] = body.linearDamping
        result[keys.angularDamping] = body.angularDamping
        result[keys.categoryBitMask] = body.categoryBitMask
        result[keys.collisionBitMask] = body.collisionBitMask
        result[keys.usesPreciseCollisionDetection] = body.usesPreciseCollisionDetection
        result[keys.contactTestBitMask] = body.contactTestBitMask
        result[keys.velocity] = body.velocity.serialized()
        result[keys.angularVelocity] = body.angularVelocity
        result[keys.isResting] = body.isResting
        if #available(OSX 10.10, *) {
            result[keys.fieldBitMask] = body.fieldBitMask
            result[keys.charge] = body.charge
            result[keys.pinned] = body.pinned
        }
// TODO: implement joint serialization??
//        if !body.joints.isEmpty {
//            var joints = [[String: Any]]()
//            for joint in body.joints {
//                joints.append(joint.serialized())
//            }
//
//            result[keys.joints] = joints
//        }
        
        return result
    }
}

// NOTE: because of the exception, use this class method to 
//       update instead
extension SKPhysicsBody /* Updatable */ {
    public static func update(_ body: SKPhysicsBody, with object: Extractable) throws {
        typealias keys = SKPhysicsBody.ExtractableKeys
        
        if let affectedByGravity: Bool = object.value(for: keys.affectedByGravity) {
            body.affectedByGravity = affectedByGravity
        }
        if let allowsRotation: Bool = object.value(for: keys.allowsRotation) {
            body.allowsRotation = allowsRotation
        }
        if let isDynamic: Bool = object.value(for: keys.isDynamic) {
            body.isDynamic = isDynamic
        }
        if let mass: CGFloat = object.value(for: keys.mass) {
            body.mass = mass
        }
        if let density: CGFloat = object.value(for: keys.density) {
            body.density = density
        }
        if let friction: CGFloat = object.value(for: keys.friction) {
            body.friction = friction
        }
        if let restitution: CGFloat = object.value(for: keys.restitution) {
            body.restitution = restitution
        }
        if let linearDamping: CGFloat = object.value(for: keys.linearDamping) {
            body.linearDamping = linearDamping
        }
        if let angularDamping: CGFloat = object.value(for: keys.angularDamping) {
            body.angularDamping = angularDamping
        }
        if let categoryBitMask: UInt32 = object.value(for: keys.categoryBitMask) {
            body.categoryBitMask = categoryBitMask
        }
        if let collisionBitMask: UInt32 = object.value(for: keys.collisionBitMask) {
            body.collisionBitMask = collisionBitMask
        }
        if let usesPreciseCollisionDetection: Bool = object.value(for: keys.usesPreciseCollisionDetection) {
            body.usesPreciseCollisionDetection = usesPreciseCollisionDetection
        }
        if let contactTestBitMask: UInt32 = object.value(for: keys.contactTestBitMask) {
            body.contactTestBitMask = contactTestBitMask
        }
        if let velocity: CGVector = object.value(for: keys.velocity) {
            body.velocity = velocity
        }
        if let angularVelocity: CGFloat = object.value(for: keys.angularVelocity) {
            body.angularVelocity = angularVelocity
        }
        if let isResting: Bool = object.value(for: keys.isResting) {
            body.isResting = isResting
        }
        if #available(OSX 10.10, *) {
            if let fieldBitMask: UInt32 = object.value(for: keys.fieldBitMask) {
                body.fieldBitMask = fieldBitMask
            }
            if let charge: CGFloat = object.value(for: keys.charge) {
                body.charge = charge
            }
            if let pinned: Bool = object.value(for: keys.pinned) {
                body.pinned = pinned
            }
        }
// TODO: implement joint updates??
//        if let joints: [SKPhysicsJoint] = object.value(for: keys.joints) {
//            body.joints = joints
//        }
    }
}
