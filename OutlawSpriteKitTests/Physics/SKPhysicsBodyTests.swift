//
//  SKPhysicsBodyTests.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/18/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import XCTest
import Outlaw
import OutlawCoreGraphics
import OutlawSimd
import SpriteKit
@testable import OutlawSpriteKit


class SKPhysicsBodyTests: XCTestCase {
    fileprivate typealias keys = SKPhysicsBody.ExtractableKeys
    
    func testSerializable() {
        let body = SKPhysicsBody()
        let data: [String: Any] = SKPhysicsBody.serialize(body)
        let dataVelocity: [String: Any]? = data[keys.velocity] as? [String: Any]
        
        XCTAssertEqual(body.affectedByGravity, data[keys.affectedByGravity] as? Bool)
        XCTAssertEqual(body.allowsRotation, data[keys.allowsRotation] as? Bool)
        XCTAssertEqual(body.isDynamic, data[keys.isDynamic] as? Bool)
        XCTAssertEqual(body.mass, data[keys.mass] as? CGFloat)
        XCTAssertEqual(body.density, data[keys.density] as? CGFloat)
        XCTAssertEqual(body.friction, data[keys.friction] as? CGFloat)
        XCTAssertEqual(body.restitution, data[keys.restitution] as? CGFloat)
        XCTAssertEqual(body.linearDamping, data[keys.linearDamping] as? CGFloat)
        XCTAssertEqual(body.angularDamping, data[keys.angularDamping] as? CGFloat)
        XCTAssertEqual(body.categoryBitMask, data[keys.categoryBitMask] as? UInt32)
        XCTAssertEqual(body.collisionBitMask, data[keys.collisionBitMask] as? UInt32)
        XCTAssertEqual(body.usesPreciseCollisionDetection, data[keys.usesPreciseCollisionDetection] as? Bool)
        XCTAssertEqual(body.contactTestBitMask, data[keys.contactTestBitMask] as? UInt32)
        XCTAssertEqual(body.velocity.dx, dataVelocity?["dx"] as? CGFloat)
        XCTAssertEqual(body.velocity.dy, dataVelocity?["dy"] as? CGFloat)
        XCTAssertEqual(body.angularVelocity, data[keys.angularVelocity] as? CGFloat)
        XCTAssertEqual(body.isResting, data[keys.isResting] as? Bool)
        if #available(OSX 10.10, *) {
            XCTAssertEqual(body.fieldBitMask, data[keys.fieldBitMask] as? UInt32)
            XCTAssertEqual(body.charge, data[keys.charge] as? CGFloat)
            XCTAssertEqual(body.pinned, data[keys.pinned] as? Bool)
        }
    }
    
    func testUpdatableWithMass() {
        let body = SKPhysicsBody(circleOfRadius: 1.0)
        let dataVelocity: [String: CGFloat] = ["dx": 99.0, "dy": 99.9]
        let data: [String: Any] = [keys.affectedByGravity: false,
                                   keys.allowsRotation: false,
                                   keys.isDynamic: false,
                                   keys.mass: CGFloat(1.0),
                                   //keys.density: CGFloat(1.0),
                                   keys.friction: CGFloat(1.0),
                                   keys.restitution: CGFloat(1.0),
                                   keys.linearDamping: CGFloat(1.0),
                                   keys.angularDamping: CGFloat(1.0),
                                   keys.categoryBitMask: UInt32(1),
                                   keys.collisionBitMask: UInt32(1),
                                   keys.usesPreciseCollisionDetection: true,
                                   keys.contactTestBitMask: UInt32(1),
                                   keys.velocity: dataVelocity,
                                   keys.angularVelocity: CGFloat(1.0),
                                   keys.isResting: true,
                                   keys.fieldBitMask: UInt32(1),
                                   keys.charge: CGFloat(1.0),
                                   keys.pinned: true]
        
        try! SKPhysicsBody.update(body, with: data)

        XCTAssertEqual(body.affectedByGravity, data[keys.affectedByGravity] as? Bool)
        XCTAssertEqual(body.allowsRotation, data[keys.allowsRotation] as? Bool)
        XCTAssertEqual(body.isDynamic, data[keys.isDynamic] as? Bool)
        XCTAssertEqualWithAccuracy(body.mass, data[keys.mass] as! CGFloat, accuracy: 0.00001)
//        XCTAssertEqual(body.density, data[keys.density] as? CGFloat)
        XCTAssertEqual(body.friction, data[keys.friction] as? CGFloat)
        XCTAssertEqual(body.restitution, data[keys.restitution] as? CGFloat)
        XCTAssertEqual(body.linearDamping, data[keys.linearDamping] as? CGFloat)
        XCTAssertEqual(body.angularDamping, data[keys.angularDamping] as? CGFloat)
        XCTAssertEqual(body.categoryBitMask, data[keys.categoryBitMask] as? UInt32)
        XCTAssertEqual(body.collisionBitMask, data[keys.collisionBitMask] as? UInt32)
        XCTAssertEqual(body.usesPreciseCollisionDetection, data[keys.usesPreciseCollisionDetection] as? Bool)
        XCTAssertEqual(body.contactTestBitMask, data[keys.contactTestBitMask] as? UInt32)
        XCTAssertEqualWithAccuracy(body.velocity.dx, dataVelocity["dx"]!, accuracy: 0.00001)
        XCTAssertEqualWithAccuracy(body.velocity.dy, dataVelocity["dy"]!, accuracy: 0.00001)
        XCTAssertEqual(body.angularVelocity, data[keys.angularVelocity] as? CGFloat)
        XCTAssertEqual(body.isResting, data[keys.isResting] as? Bool)
        if #available(OSX 10.10, *) {
            XCTAssertEqual(body.fieldBitMask, data[keys.fieldBitMask] as? UInt32)
            XCTAssertEqual(body.charge, data[keys.charge] as? CGFloat)
            XCTAssertEqual(body.pinned, data[keys.pinned] as? Bool)
        }
    }
    
    func testUpdatableWithDensity() {
        let body = SKPhysicsBody(circleOfRadius: 1.0)
        let dataVelocity: [String: CGFloat] = ["dx": 99.0, "dy": 99.9]
        let data: [String: Any] = [keys.affectedByGravity: false,
                                   keys.allowsRotation: false,
                                   keys.isDynamic: false,
                                   //keys.mass: CGFloat(1.0),
                                   keys.density: CGFloat(1.0),
                                   keys.friction: CGFloat(1.0),
                                   keys.restitution: CGFloat(1.0),
                                   keys.linearDamping: CGFloat(1.0),
                                   keys.angularDamping: CGFloat(1.0),
                                   keys.categoryBitMask: UInt32(1),
                                   keys.collisionBitMask: UInt32(1),
                                   keys.usesPreciseCollisionDetection: true,
                                   keys.contactTestBitMask: UInt32(1),
                                   keys.velocity: dataVelocity,
                                   keys.angularVelocity: CGFloat(1.0),
                                   keys.isResting: true,
                                   keys.fieldBitMask: UInt32(1),
                                   keys.charge: CGFloat(1.0),
                                   keys.pinned: true]
        
        try! SKPhysicsBody.update(body, with: data)
        
        XCTAssertEqual(body.affectedByGravity, data[keys.affectedByGravity] as? Bool)
        XCTAssertEqual(body.allowsRotation, data[keys.allowsRotation] as? Bool)
        XCTAssertEqual(body.isDynamic, data[keys.isDynamic] as? Bool)
//        XCTAssertEqualWithAccuracy(body.mass, data[keys.mass] as! CGFloat, accuracy: 0.00001)
        XCTAssertEqual(body.density, data[keys.density] as? CGFloat)
        XCTAssertEqual(body.friction, data[keys.friction] as? CGFloat)
        XCTAssertEqual(body.restitution, data[keys.restitution] as? CGFloat)
        XCTAssertEqual(body.linearDamping, data[keys.linearDamping] as? CGFloat)
        XCTAssertEqual(body.angularDamping, data[keys.angularDamping] as? CGFloat)
        XCTAssertEqual(body.categoryBitMask, data[keys.categoryBitMask] as? UInt32)
        XCTAssertEqual(body.collisionBitMask, data[keys.collisionBitMask] as? UInt32)
        XCTAssertEqual(body.usesPreciseCollisionDetection, data[keys.usesPreciseCollisionDetection] as? Bool)
        XCTAssertEqual(body.contactTestBitMask, data[keys.contactTestBitMask] as? UInt32)
        XCTAssertEqualWithAccuracy(body.velocity.dx, dataVelocity["dx"]!, accuracy: 0.00001)
        XCTAssertEqualWithAccuracy(body.velocity.dy, dataVelocity["dy"]!, accuracy: 0.00001)
        XCTAssertEqual(body.angularVelocity, data[keys.angularVelocity] as? CGFloat)
        XCTAssertEqual(body.isResting, data[keys.isResting] as? Bool)
        if #available(OSX 10.10, *) {
            XCTAssertEqual(body.fieldBitMask, data[keys.fieldBitMask] as? UInt32)
            XCTAssertEqual(body.charge, data[keys.charge] as? CGFloat)
            XCTAssertEqual(body.pinned, data[keys.pinned] as? Bool)
        }
    }
}
