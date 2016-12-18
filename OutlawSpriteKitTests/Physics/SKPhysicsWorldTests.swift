//
//  SKPhysicsWorldTests.swift
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


class SKPhysicsWorldTests: XCTestCase {
    func testSerializable() {
        typealias keys = SKPhysicsWorld.ExtractableKeys
        
        let world = SKPhysicsWorld()
        let data: [String: Any] = SKPhysicsWorld.serialize(world)
        let dataGravity: [String: Any]? = data[keys.gravity] as? [String: Any]
        
        XCTAssertEqualWithAccuracy(world.gravity.dx, dataGravity?["dx"] as! CGFloat, accuracy: 0.00001)
        XCTAssertEqualWithAccuracy(world.gravity.dy, dataGravity?["dy"] as! CGFloat, accuracy: 0.00001)
        XCTAssertEqualWithAccuracy(world.speed, data[keys.speed] as! CGFloat, accuracy: 0.00001)
    }
    
    func testUpdatable() {
        typealias keys = SKPhysicsWorld.ExtractableKeys
        
        let world = SKPhysicsWorld()
        let dataGravity: [String: CGFloat] = ["dx": 99.0, "dy": 99.9]
        let data: [String: Any] = [keys.gravity: dataGravity,
                                   keys.speed: 1.234 as CGFloat]
        try! SKPhysicsWorld.update(world, with: data)
        
        XCTAssertEqualWithAccuracy(world.gravity.dx, dataGravity["dx"]!, accuracy: 0.00001)
        XCTAssertEqualWithAccuracy(world.gravity.dy, dataGravity["dy"]!, accuracy: 0.00001)
        XCTAssertEqualWithAccuracy(world.speed, data[keys.speed] as! CGFloat, accuracy: 0.00001)
    }
}
