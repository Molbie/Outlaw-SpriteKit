//
//  SKBlendModeTests.swift
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


class SKBlendModeTests: XCTestCase {
    func testStringInit() {
        let alpha = SKBlendMode(stringValue: "alpha")
        XCTAssertEqual(alpha, .alpha)
        
        let add = SKBlendMode(stringValue: "add")
        XCTAssertEqual(add, .add)
        
        let subtract = SKBlendMode(stringValue: "subtract")
        XCTAssertEqual(subtract, .subtract)
        
        let multiply = SKBlendMode(stringValue: "multiply")
        XCTAssertEqual(multiply, .multiply)
        
        let multiplyX2 = SKBlendMode(stringValue: "multiplyx2")
        XCTAssertEqual(multiplyX2, .multiplyX2)
        
        let screen = SKBlendMode(stringValue: "screen")
        XCTAssertEqual(screen, .screen)
        
        let replace = SKBlendMode(stringValue: "replace")
        XCTAssertEqual(replace, .replace)
        
        let invalid = SKBlendMode(stringValue: "invalid")
        XCTAssertNil(invalid)
    }
    
    func testUpperStringInit() {
        let alpha = SKBlendMode(stringValue: "ALPHA")
        XCTAssertEqual(alpha, .alpha)
        
        let add = SKBlendMode(stringValue: "ADD")
        XCTAssertEqual(add, .add)
        
        let subtract = SKBlendMode(stringValue: "SUBTRACT")
        XCTAssertEqual(subtract, .subtract)
        
        let multiply = SKBlendMode(stringValue: "MULTIPLY")
        XCTAssertEqual(multiply, .multiply)
        
        let multiplyX2 = SKBlendMode(stringValue: "MULTIPLYX2")
        XCTAssertEqual(multiplyX2, .multiplyX2)
        
        let screen = SKBlendMode(stringValue: "SCREEN")
        XCTAssertEqual(screen, .screen)
        
        let replace = SKBlendMode(stringValue: "REPLACE")
        XCTAssertEqual(replace, .replace)
        
        let invalid = SKBlendMode(stringValue: "INVALID")
        XCTAssertNil(invalid)
    }
    
    func testStringValue() {
        let alpha = SKBlendMode.alpha
        XCTAssertEqual(alpha.stringValue, "alpha")
        
        let add = SKBlendMode.add
        XCTAssertEqual(add.stringValue, "add")
        
        let subtract = SKBlendMode.subtract
        XCTAssertEqual(subtract.stringValue, "subtract")
        
        let multiply = SKBlendMode.multiply
        XCTAssertEqual(multiply.stringValue, "multiply")
        
        let multiplyX2 = SKBlendMode.multiplyX2
        XCTAssertEqual(multiplyX2.stringValue, "multiplyx2")
        
        let screen = SKBlendMode.screen
        XCTAssertEqual(screen.stringValue, "screen")
        
        let replace = SKBlendMode.replace
        XCTAssertEqual(replace.stringValue, "replace")
    }
}
