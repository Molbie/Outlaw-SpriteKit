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
        let linear = SKInterpolationMode(stringValue: "linear")
        XCTAssertEqual(linear, .linear)
        
        let spline = SKInterpolationMode(stringValue: "spline")
        XCTAssertEqual(spline, .spline)
        
        let step = SKInterpolationMode(stringValue: "step")
        XCTAssertEqual(step, .step)
        
        let invalid = SKInterpolationMode(stringValue: "invalid")
        XCTAssertNil(invalid)
    }
    
    func testUpperStringInit() {
        let linear = SKInterpolationMode(stringValue: "LINEAR")
        XCTAssertEqual(linear, .linear)
        
        let spline = SKInterpolationMode(stringValue: "SPLINE")
        XCTAssertEqual(spline, .spline)
        
        let step = SKInterpolationMode(stringValue: "STEP")
        XCTAssertEqual(step, .step)
        
        let invalid = SKInterpolationMode(stringValue: "INVALID")
        XCTAssertNil(invalid)
    }
    
    func testStringValue() {
        let linear = SKInterpolationMode.linear
        XCTAssertEqual(linear.stringValue, "linear")
        
        let spline = SKInterpolationMode.spline
        XCTAssertEqual(spline.stringValue, "spline")
        
        let step = SKInterpolationMode.step
        XCTAssertEqual(step.stringValue, "step")
    }
}
