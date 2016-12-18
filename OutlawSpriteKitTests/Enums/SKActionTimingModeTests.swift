//
//  SKActionTimingModeTests.swift
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


class SKActionTimingModeTests: XCTestCase {
    func testStringInit() {
        let linear = SKActionTimingMode(stringValue: "linear")
        XCTAssertEqual(linear, .linear)
        
        let easeIn = SKActionTimingMode(stringValue: "easein")
        XCTAssertEqual(easeIn, .easeIn)
        
        let easeOut = SKActionTimingMode(stringValue: "easeout")
        XCTAssertEqual(easeOut, .easeOut)
        
        let easeInEaseOut = SKActionTimingMode(stringValue: "easeineaseout")
        XCTAssertEqual(easeInEaseOut, .easeInEaseOut)
        
        let invalid = SKActionTimingMode(stringValue: "invalid")
        XCTAssertNil(invalid)
    }
    
    func testUpperStringInit() {
        let linear = SKActionTimingMode(stringValue: "LINEAR")
        XCTAssertEqual(linear, .linear)
        
        let easeIn = SKActionTimingMode(stringValue: "EASEIN")
        XCTAssertEqual(easeIn, .easeIn)
        
        let easeOut = SKActionTimingMode(stringValue: "EASEOUT")
        XCTAssertEqual(easeOut, .easeOut)
        
        let easeInEaseOut = SKActionTimingMode(stringValue: "EASEINEASEOUT")
        XCTAssertEqual(easeInEaseOut, .easeInEaseOut)
        
        let invalid = SKActionTimingMode(stringValue: "INVALID")
        XCTAssertNil(invalid)
    }
    
    func testStringValue() {
        let linear = SKActionTimingMode.linear
        XCTAssertEqual(linear.stringValue, "linear")
        
        let easeIn = SKActionTimingMode.easeIn
        XCTAssertEqual(easeIn.stringValue, "easein")
        
        let easeOut = SKActionTimingMode.easeOut
        XCTAssertEqual(easeOut.stringValue, "easeout")
        
        let easeInEaseOut = SKActionTimingMode.easeInEaseOut
        XCTAssertEqual(easeInEaseOut.stringValue, "easeineaseout")
    }
}
