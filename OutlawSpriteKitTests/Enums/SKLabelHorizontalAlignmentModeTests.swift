//
//  SKLabelHorizontalAlignmentModeTests.swift
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


class SKLabelHorizontalAlignmentModeTests: XCTestCase {
    func testStringInit() {
        let center = SKLabelHorizontalAlignmentMode(stringValue: "center")
        XCTAssertEqual(center, .center)
        
        let left = SKLabelHorizontalAlignmentMode(stringValue: "left")
        XCTAssertEqual(left, .left)
        
        let right = SKLabelHorizontalAlignmentMode(stringValue: "right")
        XCTAssertEqual(right, .right)
        
        let invalid = SKLabelHorizontalAlignmentMode(stringValue: "invalid")
        XCTAssertNil(invalid)
    }
    
    func testUpperStringInit() {
        let center = SKLabelHorizontalAlignmentMode(stringValue: "CENTER")
        XCTAssertEqual(center, .center)
        
        let left = SKLabelHorizontalAlignmentMode(stringValue: "LEFT")
        XCTAssertEqual(left, .left)
        
        let right = SKLabelHorizontalAlignmentMode(stringValue: "RIGHT")
        XCTAssertEqual(right, .right)
        
        let invalid = SKLabelHorizontalAlignmentMode(stringValue: "INVALID")
        XCTAssertNil(invalid)
    }
    
    func testStringValue() {
        let center = SKLabelHorizontalAlignmentMode.center
        XCTAssertEqual(center.stringValue, "center")
        
        let left = SKLabelHorizontalAlignmentMode.left
        XCTAssertEqual(left.stringValue, "left")
        
        let right = SKLabelHorizontalAlignmentMode.right
        XCTAssertEqual(right.stringValue, "right")
    }
}
