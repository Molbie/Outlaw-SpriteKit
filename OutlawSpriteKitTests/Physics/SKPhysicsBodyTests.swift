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
    func testSerializable() {
        let body = SKPhysicsBody()
        let data: [String: Any] = SKPhysicsBody.serialize(body)
        let dataVelocity: [String: Any]? = data["velocity"] as? [String: Any]
        
        XCTAssertEqual(body.affectedByGravity, data["affectedByGravity"] as? Bool)
        XCTAssertEqual(body.allowsRotation, data["allowsRotation"] as? Bool)
        XCTAssertEqual(body.isDynamic, data["isDynamic"] as? Bool)
        XCTAssertEqual(body.mass, data["mass"] as? CGFloat)
        XCTAssertEqual(body.density, data["density"] as? CGFloat)
        XCTAssertEqual(body.friction, data["friction"] as? CGFloat)
        XCTAssertEqual(body.restitution, data["restitution"] as? CGFloat)
        XCTAssertEqual(body.linearDamping, data["linearDamping"] as? CGFloat)
        XCTAssertEqual(body.angularDamping, data["angularDamping"] as? CGFloat)
        XCTAssertEqual(body.categoryBitMask, data["categoryBitMask"] as? UInt32)
        XCTAssertEqual(body.collisionBitMask, data["collisionBitMask"] as? UInt32)
        XCTAssertEqual(body.usesPreciseCollisionDetection, data["usesPreciseCollisionDetection"] as? Bool)
        XCTAssertEqual(body.contactTestBitMask, data["contactTestBitMask"] as? UInt32)
        XCTAssertEqual(body.velocity.dx, dataVelocity?["dx"] as? CGFloat)
        XCTAssertEqual(body.velocity.dy, dataVelocity?["dy"] as? CGFloat)
        XCTAssertEqual(body.angularVelocity, data["angularVelocity"] as? CGFloat)
        XCTAssertEqual(body.isResting, data["isResting"] as? Bool)
        if #available(OSX 10.10, *) {
            XCTAssertEqual(body.fieldBitMask, data["fieldBitMask"] as? UInt32)
            XCTAssertEqual(body.charge, data["charge"] as? CGFloat)
            XCTAssertEqual(body.pinned, data["pinned"] as? Bool)
        }
    }
    
    func testUpdatableWithMass() {
        let body = SKPhysicsBody(circleOfRadius: 1.0)
        let dataVelocity: [String: CGFloat] = ["dx": 99.0, "dy": 99.9]
        let data: [String: Any] = ["affectedByGravity": false,
                                   "allowsRotation": false,
                                   "isDynamic": false,
                                   "mass": CGFloat(1.0),
                                   //"density": CGFloat(1.0),
                                   "friction": CGFloat(1.0),
                                   "restitution": CGFloat(1.0),
                                   "linearDamping": CGFloat(1.0),
                                   "angularDamping": CGFloat(1.0),
                                   "categoryBitMask": UInt32(1),
                                   "collisionBitMask": UInt32(1),
                                   "usesPreciseCollisionDetection": true,
                                   "contactTestBitMask": UInt32(1),
                                   "velocity": dataVelocity,
                                   "angularVelocity": CGFloat(1.0),
                                   "isResting": true,
                                   "fieldBitMask": UInt32(1),
                                   "charge": CGFloat(1.0),
                                   "pinned": true]
        
        try! SKPhysicsBody.update(body, with: data)

        XCTAssertEqual(body.affectedByGravity, data["affectedByGravity"] as? Bool)
        XCTAssertEqual(body.allowsRotation, data["allowsRotation"] as? Bool)
        XCTAssertEqual(body.isDynamic, data["isDynamic"] as? Bool)
        XCTAssertEqualWithAccuracy(body.mass, data["mass"] as! CGFloat, accuracy: 0.00001)
//        XCTAssertEqual(body.density, data["density"] as? CGFloat)
        XCTAssertEqual(body.friction, data["friction"] as? CGFloat)
        XCTAssertEqual(body.restitution, data["restitution"] as? CGFloat)
        XCTAssertEqual(body.linearDamping, data["linearDamping"] as? CGFloat)
        XCTAssertEqual(body.angularDamping, data["angularDamping"] as? CGFloat)
        XCTAssertEqual(body.categoryBitMask, data["categoryBitMask"] as? UInt32)
        XCTAssertEqual(body.collisionBitMask, data["collisionBitMask"] as? UInt32)
        XCTAssertEqual(body.usesPreciseCollisionDetection, data["usesPreciseCollisionDetection"] as? Bool)
        XCTAssertEqual(body.contactTestBitMask, data["contactTestBitMask"] as? UInt32)
        XCTAssertEqualWithAccuracy(body.velocity.dx, dataVelocity["dx"]!, accuracy: 0.00001)
        XCTAssertEqualWithAccuracy(body.velocity.dy, dataVelocity["dy"]!, accuracy: 0.00001)
        XCTAssertEqual(body.angularVelocity, data["angularVelocity"] as? CGFloat)
        XCTAssertEqual(body.isResting, data["isResting"] as? Bool)
        if #available(OSX 10.10, *) {
            XCTAssertEqual(body.fieldBitMask, data["fieldBitMask"] as? UInt32)
            XCTAssertEqual(body.charge, data["charge"] as? CGFloat)
            XCTAssertEqual(body.pinned, data["pinned"] as? Bool)
        }
    }
    
    func testUpdatableWithDensity() {
        let body = SKPhysicsBody(circleOfRadius: 1.0)
        let dataVelocity: [String: CGFloat] = ["dx": 99.0, "dy": 99.9]
        let data: [String: Any] = ["affectedByGravity": false,
                                   "allowsRotation": false,
                                   "isDynamic": false,
                                   //"mass": CGFloat(1.0),
                                   "density": CGFloat(1.0),
                                   "friction": CGFloat(1.0),
                                   "restitution": CGFloat(1.0),
                                   "linearDamping": CGFloat(1.0),
                                   "angularDamping": CGFloat(1.0),
                                   "categoryBitMask": UInt32(1),
                                   "collisionBitMask": UInt32(1),
                                   "usesPreciseCollisionDetection": true,
                                   "contactTestBitMask": UInt32(1),
                                   "velocity": dataVelocity,
                                   "angularVelocity": CGFloat(1.0),
                                   "isResting": true,
                                   "fieldBitMask": UInt32(1),
                                   "charge": CGFloat(1.0),
                                   "pinned": true]
        
        try! SKPhysicsBody.update(body, with: data)
        
        XCTAssertEqual(body.affectedByGravity, data["affectedByGravity"] as? Bool)
        XCTAssertEqual(body.allowsRotation, data["allowsRotation"] as? Bool)
        XCTAssertEqual(body.isDynamic, data["isDynamic"] as? Bool)
//        XCTAssertEqualWithAccuracy(body.mass, data["mass"] as! CGFloat, accuracy: 0.00001)
        XCTAssertEqual(body.density, data["density"] as? CGFloat)
        XCTAssertEqual(body.friction, data["friction"] as? CGFloat)
        XCTAssertEqual(body.restitution, data["restitution"] as? CGFloat)
        XCTAssertEqual(body.linearDamping, data["linearDamping"] as? CGFloat)
        XCTAssertEqual(body.angularDamping, data["angularDamping"] as? CGFloat)
        XCTAssertEqual(body.categoryBitMask, data["categoryBitMask"] as? UInt32)
        XCTAssertEqual(body.collisionBitMask, data["collisionBitMask"] as? UInt32)
        XCTAssertEqual(body.usesPreciseCollisionDetection, data["usesPreciseCollisionDetection"] as? Bool)
        XCTAssertEqual(body.contactTestBitMask, data["contactTestBitMask"] as? UInt32)
        XCTAssertEqualWithAccuracy(body.velocity.dx, dataVelocity["dx"]!, accuracy: 0.00001)
        XCTAssertEqualWithAccuracy(body.velocity.dy, dataVelocity["dy"]!, accuracy: 0.00001)
        XCTAssertEqual(body.angularVelocity, data["angularVelocity"] as? CGFloat)
        XCTAssertEqual(body.isResting, data["isResting"] as? Bool)
        if #available(OSX 10.10, *) {
            XCTAssertEqual(body.fieldBitMask, data["fieldBitMask"] as? UInt32)
            XCTAssertEqual(body.charge, data["charge"] as? CGFloat)
            XCTAssertEqual(body.pinned, data["pinned"] as? Bool)
        }
    }
}
