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
    fileprivate typealias strings = SKTextureFilteringMode.StringValues
    
    func testStringInit() {
        let nearest = SKTextureFilteringMode(stringValue: strings.nearest)
        XCTAssertEqual(nearest, .nearest)
        
        let linear = SKTextureFilteringMode(stringValue: strings.linear)
        XCTAssertEqual(linear, .linear)
        
        let invalid = SKTextureFilteringMode(stringValue: "invalid")
        XCTAssertNil(invalid)
    }
    
    func testUpperStringInit() {
        let nearest = SKTextureFilteringMode(stringValue: strings.nearest.uppercased())
        XCTAssertEqual(nearest, .nearest)
        
        let linear = SKTextureFilteringMode(stringValue: strings.linear.uppercased())
        XCTAssertEqual(linear, .linear)
        
        let invalid = SKTextureFilteringMode(stringValue: "INVALID")
        XCTAssertNil(invalid)
    }
    
    func testStringValue() {
        let nearest = SKTextureFilteringMode.nearest
        XCTAssertEqual(nearest.stringValue, strings.nearest)
        
        let linear = SKTextureFilteringMode.linear
        XCTAssertEqual(linear.stringValue, strings.linear)
    }
}
