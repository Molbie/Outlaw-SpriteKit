//
//  SKInterpolationModeTests.swift
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


class SKInterpolationModeTests: XCTestCase {
    func testStringInit() {
        typealias strings = SKInterpolationMode.StringValues
        
        let linear = SKInterpolationMode(stringValue: strings.linear)
        XCTAssertEqual(linear, .linear)
        
        let spline = SKInterpolationMode(stringValue: strings.spline)
        XCTAssertEqual(spline, .spline)
        
        let step = SKInterpolationMode(stringValue: strings.step)
        XCTAssertEqual(step, .step)
        
        let invalid = SKInterpolationMode(stringValue: "invalid")
        XCTAssertNil(invalid)
    }
    
    func testUpperStringInit() {
        typealias strings = SKInterpolationMode.StringValues
        
        let linear = SKInterpolationMode(stringValue: strings.linear.uppercased())
        XCTAssertEqual(linear, .linear)
        
        let spline = SKInterpolationMode(stringValue: strings.spline.uppercased())
        XCTAssertEqual(spline, .spline)
        
        let step = SKInterpolationMode(stringValue: strings.step.uppercased())
        XCTAssertEqual(step, .step)
        
        let invalid = SKInterpolationMode(stringValue: "INVALID")
        XCTAssertNil(invalid)
    }
    
    func testStringValue() {
        typealias strings = SKInterpolationMode.StringValues
        
        let linear = SKInterpolationMode.linear
        XCTAssertEqual(linear.stringValue, strings.linear)
        
        let spline = SKInterpolationMode.spline
        XCTAssertEqual(spline.stringValue, strings.spline)
        
        let step = SKInterpolationMode.step
        XCTAssertEqual(step.stringValue, strings.step)
    }
}
