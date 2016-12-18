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
        typealias strings = SKActionTimingMode.StringValues
        
        let linear = SKActionTimingMode(stringValue: strings.linear)
        XCTAssertEqual(linear, .linear)
        
        let easeIn = SKActionTimingMode(stringValue: strings.easeIn)
        XCTAssertEqual(easeIn, .easeIn)
        
        let easeOut = SKActionTimingMode(stringValue: strings.easeOut)
        XCTAssertEqual(easeOut, .easeOut)
        
        let easeInEaseOut = SKActionTimingMode(stringValue: strings.easeInEaseOut)
        XCTAssertEqual(easeInEaseOut, .easeInEaseOut)
        
        let invalid = SKActionTimingMode(stringValue: "invalid")
        XCTAssertNil(invalid)
    }
    
    func testUpperStringInit() {
        typealias strings = SKActionTimingMode.StringValues
        
        let linear = SKActionTimingMode(stringValue: strings.linear.uppercased())
        XCTAssertEqual(linear, .linear)
        
        let easeIn = SKActionTimingMode(stringValue: strings.easeIn.uppercased())
        XCTAssertEqual(easeIn, .easeIn)
        
        let easeOut = SKActionTimingMode(stringValue: strings.easeOut.uppercased())
        XCTAssertEqual(easeOut, .easeOut)
        
        let easeInEaseOut = SKActionTimingMode(stringValue: strings.easeInEaseOut.uppercased())
        XCTAssertEqual(easeInEaseOut, .easeInEaseOut)
        
        let invalid = SKActionTimingMode(stringValue: "INVALID")
        XCTAssertNil(invalid)
    }
    
    func testStringValue() {
        typealias strings = SKActionTimingMode.StringValues
        
        let linear = SKActionTimingMode.linear
        XCTAssertEqual(linear.stringValue, strings.linear)
        
        let easeIn = SKActionTimingMode.easeIn
        XCTAssertEqual(easeIn.stringValue, strings.easeIn)
        
        let easeOut = SKActionTimingMode.easeOut
        XCTAssertEqual(easeOut.stringValue, strings.easeOut)
        
        let easeInEaseOut = SKActionTimingMode.easeInEaseOut
        XCTAssertEqual(easeInEaseOut.stringValue, strings.easeInEaseOut)
    }
}
