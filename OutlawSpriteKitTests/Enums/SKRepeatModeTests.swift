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
    fileprivate typealias strings = SKRepeatMode.StringValues
    
    func testStringInit() {
        let clamp = SKRepeatMode(stringValue: strings.clamp)
        XCTAssertEqual(clamp, .clamp)
        
        let loop = SKRepeatMode(stringValue: strings.loop)
        XCTAssertEqual(loop, .loop)
        
        let invalid = SKRepeatMode(stringValue: "invalid")
        XCTAssertNil(invalid)
    }
    
    func testUpperStringInit() {
        let clamp = SKRepeatMode(stringValue: strings.clamp.uppercased())
        XCTAssertEqual(clamp, .clamp)
        
        let loop = SKRepeatMode(stringValue: strings.loop.uppercased())
        XCTAssertEqual(loop, .loop)
        
        let invalid = SKRepeatMode(stringValue: "INVALID")
        XCTAssertNil(invalid)
    }
    
    func testStringValue() {
        let clamp = SKRepeatMode.clamp
        XCTAssertEqual(clamp.stringValue, strings.clamp)
        
        let loop = SKRepeatMode.loop
        XCTAssertEqual(loop.stringValue, strings.loop)
    }
}
