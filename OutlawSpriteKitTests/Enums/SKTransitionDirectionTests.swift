//
//  SKTransitionDirectionTests.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/18/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import XCTest
import Outlaw
import OutlawCoreGraphics
import OutlawSimd
import SpriteKit
@testable import OutlawSpriteKit


class SKTransitionDirectionTests: XCTestCase {
    func testStringInit() {
        let up = SKTransitionDirection(stringValue: "up")
        XCTAssertEqual(up, .up)
        
        let down = SKTransitionDirection(stringValue: "down")
        XCTAssertEqual(down, .down)
        
        let right = SKTransitionDirection(stringValue: "right")
        XCTAssertEqual(right, .right)
        
        let left = SKTransitionDirection(stringValue: "left")
        XCTAssertEqual(left, .left)
        
        let invalid = SKTransitionDirection(stringValue: "invalid")
        XCTAssertNil(invalid)
    }
    
    func testUpperStringInit() {
        let up = SKTransitionDirection(stringValue: "UP")
        XCTAssertEqual(up, .up)
        
        let down = SKTransitionDirection(stringValue: "DOWN")
        XCTAssertEqual(down, .down)
        
        let right = SKTransitionDirection(stringValue: "RIGHT")
        XCTAssertEqual(right, .right)
        
        let left = SKTransitionDirection(stringValue: "LEFT")
        XCTAssertEqual(left, .left)
        
        let invalid = SKTransitionDirection(stringValue: "INVALID")
        XCTAssertNil(invalid)
    }
    
    func testStringValue() {
        let up = SKTransitionDirection.up
        XCTAssertEqual(up.stringValue, "up")
        
        let down = SKTransitionDirection.down
        XCTAssertEqual(down.stringValue, "down")
        
        let right = SKTransitionDirection.right
        XCTAssertEqual(right.stringValue, "right")
        
        let left = SKTransitionDirection.left
        XCTAssertEqual(left.stringValue, "left")
    }
}
