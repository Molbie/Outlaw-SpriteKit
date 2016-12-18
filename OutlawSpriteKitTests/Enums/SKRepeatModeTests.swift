//
//  SKRepeatModeTests.swift
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


class SKRepeatModeTests: XCTestCase {
    func testStringInit() {
        let clamp = SKRepeatMode(stringValue: "clamp")
        XCTAssertEqual(clamp, .clamp)
        
        let loop = SKRepeatMode(stringValue: "loop")
        XCTAssertEqual(loop, .loop)
        
        let invalid = SKRepeatMode(stringValue: "invalid")
        XCTAssertNil(invalid)
    }
    
    func testUpperStringInit() {
        let clamp = SKRepeatMode(stringValue: "CLAMP")
        XCTAssertEqual(clamp, .clamp)
        
        let loop = SKRepeatMode(stringValue: "LOOP")
        XCTAssertEqual(loop, .loop)
        
        let invalid = SKRepeatMode(stringValue: "INVALID")
        XCTAssertNil(invalid)
    }
    
    func testStringValue() {
        let clamp = SKRepeatMode.clamp
        XCTAssertEqual(clamp.stringValue, "clamp")
        
        let loop = SKRepeatMode.loop
        XCTAssertEqual(loop.stringValue, "loop")
    }
}
