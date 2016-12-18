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
        typealias strings = SKLabelHorizontalAlignmentMode.StringValues
        
        let center = SKLabelHorizontalAlignmentMode(stringValue: strings.center)
        XCTAssertEqual(center, .center)
        
        let left = SKLabelHorizontalAlignmentMode(stringValue: strings.left)
        XCTAssertEqual(left, .left)
        
        let right = SKLabelHorizontalAlignmentMode(stringValue: strings.right)
        XCTAssertEqual(right, .right)
        
        let invalid = SKLabelHorizontalAlignmentMode(stringValue: "invalid")
        XCTAssertNil(invalid)
    }
    
    func testUpperStringInit() {
        typealias strings = SKLabelHorizontalAlignmentMode.StringValues
        
        let center = SKLabelHorizontalAlignmentMode(stringValue: strings.center.uppercased())
        XCTAssertEqual(center, .center)
        
        let left = SKLabelHorizontalAlignmentMode(stringValue: strings.left.uppercased())
        XCTAssertEqual(left, .left)
        
        let right = SKLabelHorizontalAlignmentMode(stringValue: strings.right.uppercased())
        XCTAssertEqual(right, .right)
        
        let invalid = SKLabelHorizontalAlignmentMode(stringValue: "INVALID")
        XCTAssertNil(invalid)
    }
    
    func testStringValue() {
        typealias strings = SKLabelHorizontalAlignmentMode.StringValues
        
        let center = SKLabelHorizontalAlignmentMode.center
        XCTAssertEqual(center.stringValue, strings.center)
        
        let left = SKLabelHorizontalAlignmentMode.left
        XCTAssertEqual(left.stringValue, strings.left)
        
        let right = SKLabelHorizontalAlignmentMode.right
        XCTAssertEqual(right.stringValue, strings.right)
    }
}
