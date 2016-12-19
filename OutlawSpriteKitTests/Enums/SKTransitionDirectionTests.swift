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
    fileprivate typealias strings = SKTransitionDirection.StringValues
    
    func testStringInit() {
        let up = SKTransitionDirection(stringValue: strings.up)
        XCTAssertEqual(up, .up)
        
        let down = SKTransitionDirection(stringValue: strings.down)
        XCTAssertEqual(down, .down)
        
        let right = SKTransitionDirection(stringValue: strings.right)
        XCTAssertEqual(right, .right)
        
        let left = SKTransitionDirection(stringValue: strings.left)
        XCTAssertEqual(left, .left)
        
        let invalid = SKTransitionDirection(stringValue: "invalid")
        XCTAssertNil(invalid)
    }
    
    func testUpperStringInit() {
        let up = SKTransitionDirection(stringValue: strings.up.uppercased())
        XCTAssertEqual(up, .up)
        
        let down = SKTransitionDirection(stringValue: strings.down.uppercased())
        XCTAssertEqual(down, .down)
        
        let right = SKTransitionDirection(stringValue: strings.right.uppercased())
        XCTAssertEqual(right, .right)
        
        let left = SKTransitionDirection(stringValue: strings.left.uppercased())
        XCTAssertEqual(left, .left)
        
        let invalid = SKTransitionDirection(stringValue: "INVALID")
        XCTAssertNil(invalid)
    }
    
    func testStringValue() {
        let up = SKTransitionDirection.up
        XCTAssertEqual(up.stringValue, strings.up)
        
        let down = SKTransitionDirection.down
        XCTAssertEqual(down.stringValue, strings.down)
        
        let right = SKTransitionDirection.right
        XCTAssertEqual(right.stringValue, strings.right)
        
        let left = SKTransitionDirection.left
        XCTAssertEqual(left.stringValue, strings.left)
    }
}
