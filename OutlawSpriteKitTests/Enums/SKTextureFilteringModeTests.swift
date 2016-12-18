//
//  SKTextureFilteringModeTests.swift
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


class SKTextureFilteringModeTests: XCTestCase {
    func testStringInit() {
        let nearest = SKTextureFilteringMode(stringValue: "nearest")
        XCTAssertEqual(nearest, .nearest)
        
        let linear = SKTextureFilteringMode(stringValue: "linear")
        XCTAssertEqual(linear, .linear)
        
        let invalid = SKTextureFilteringMode(stringValue: "invalid")
        XCTAssertNil(invalid)
    }
    
    func testUpperStringInit() {
        let nearest = SKTextureFilteringMode(stringValue: "NEAREST")
        XCTAssertEqual(nearest, .nearest)
        
        let linear = SKTextureFilteringMode(stringValue: "LINEAR")
        XCTAssertEqual(linear, .linear)
        
        let invalid = SKTextureFilteringMode(stringValue: "INVALID")
        XCTAssertNil(invalid)
    }
    
    func testStringValue() {
        let nearest = SKTextureFilteringMode.nearest
        XCTAssertEqual(nearest.stringValue, "nearest")
        
        let linear = SKTextureFilteringMode.linear
        XCTAssertEqual(linear.stringValue, "linear")
    }
}
