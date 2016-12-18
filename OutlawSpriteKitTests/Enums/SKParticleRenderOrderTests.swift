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
        typealias strings = SKParticleRenderOrder.StringValues
        
        let oldestLast = SKParticleRenderOrder(stringValue: strings.oldestLast)
        XCTAssertEqual(oldestLast, .oldestLast)
        
        let oldestFirst = SKParticleRenderOrder(stringValue: strings.oldestFirst)
        XCTAssertEqual(oldestFirst, .oldestFirst)
        
        let dontCare = SKParticleRenderOrder(stringValue: strings.dontCare)
        XCTAssertEqual(dontCare, .dontCare)
        
        let invalid = SKParticleRenderOrder(stringValue: "invalid")
        XCTAssertNil(invalid)
    }
    
    func testUpperStringInit() {
        typealias strings = SKParticleRenderOrder.StringValues
        
        let oldestLast = SKParticleRenderOrder(stringValue: strings.oldestLast.uppercased())
        XCTAssertEqual(oldestLast, .oldestLast)
        
        let oldestFirst = SKParticleRenderOrder(stringValue: strings.oldestFirst.uppercased())
        XCTAssertEqual(oldestFirst, .oldestFirst)
        
        let dontCare = SKParticleRenderOrder(stringValue: strings.dontCare.uppercased())
        XCTAssertEqual(dontCare, .dontCare)
        
        let invalid = SKParticleRenderOrder(stringValue: "INVALID")
        XCTAssertNil(invalid)
    }
    
    func testStringValue() {
        typealias strings = SKParticleRenderOrder.StringValues
        
        let oldestLast = SKParticleRenderOrder.oldestLast
        XCTAssertEqual(oldestLast.stringValue, strings.oldestLast)
        
        let oldestFirst = SKParticleRenderOrder.oldestFirst
        XCTAssertEqual(oldestFirst.stringValue, strings.oldestFirst)
        
        let dontCare = SKParticleRenderOrder.dontCare
        XCTAssertEqual(dontCare.stringValue, strings.dontCare)
    }
}
