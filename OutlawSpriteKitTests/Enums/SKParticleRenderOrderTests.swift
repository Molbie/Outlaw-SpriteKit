//
//  SKParticleRenderOrderTests.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/17/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import XCTest
import Outlaw
import OutlawCoreGraphics
import OutlawSimd
import SpriteKit
@testable import OutlawSpriteKit


@available(iOS 9.0, OSX 10.11, *)
class SKParticleRenderOrderTests: XCTestCase {
    func testStringInit() {
        let oldestLast = SKParticleRenderOrder(stringValue: "oldestlast")
        XCTAssertEqual(oldestLast, .oldestLast)
        
        let oldestFirst = SKParticleRenderOrder(stringValue: "oldestfirst")
        XCTAssertEqual(oldestFirst, .oldestFirst)
        
        let dontCare = SKParticleRenderOrder(stringValue: "dontcare")
        XCTAssertEqual(dontCare, .dontCare)
        
        let invalid = SKParticleRenderOrder(stringValue: "invalid")
        XCTAssertNil(invalid)
    }
    
    func testUpperStringInit() {
        let oldestLast = SKParticleRenderOrder(stringValue: "OLDESTLAST")
        XCTAssertEqual(oldestLast, .oldestLast)
        
        let oldestFirst = SKParticleRenderOrder(stringValue: "OLDESTFIRST")
        XCTAssertEqual(oldestFirst, .oldestFirst)
        
        let dontCare = SKParticleRenderOrder(stringValue: "DONTCARE")
        XCTAssertEqual(dontCare, .dontCare)
        
        let invalid = SKParticleRenderOrder(stringValue: "INVALID")
        XCTAssertNil(invalid)
    }
    
    func testStringValue() {
        let oldestLast = SKParticleRenderOrder.oldestLast
        XCTAssertEqual(oldestLast.stringValue, "oldestlast")
        
        let oldestFirst = SKParticleRenderOrder.oldestFirst
        XCTAssertEqual(oldestFirst.stringValue, "oldestfirst")
        
        let dontCare = SKParticleRenderOrder.dontCare
        XCTAssertEqual(dontCare.stringValue, "dontcare")
    }
}
