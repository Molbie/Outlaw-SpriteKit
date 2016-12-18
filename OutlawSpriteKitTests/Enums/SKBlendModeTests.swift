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
        typealias strings = SKBlendMode.StringValues
        
        let alpha = SKBlendMode(stringValue: strings.alpha)
        XCTAssertEqual(alpha, .alpha)
        
        let add = SKBlendMode(stringValue: strings.add)
        XCTAssertEqual(add, .add)
        
        let subtract = SKBlendMode(stringValue: strings.subtract)
        XCTAssertEqual(subtract, .subtract)
        
        let multiply = SKBlendMode(stringValue: strings.multiply)
        XCTAssertEqual(multiply, .multiply)
        
        let multiplyX2 = SKBlendMode(stringValue: strings.multiplyX2)
        XCTAssertEqual(multiplyX2, .multiplyX2)
        
        let screen = SKBlendMode(stringValue: strings.screen)
        XCTAssertEqual(screen, .screen)
        
        let replace = SKBlendMode(stringValue: strings.replace)
        XCTAssertEqual(replace, .replace)
        
        let invalid = SKBlendMode(stringValue: "invalid")
        XCTAssertNil(invalid)
    }
    
    func testUpperStringInit() {
        typealias strings = SKBlendMode.StringValues
        
        let alpha = SKBlendMode(stringValue: strings.alpha.uppercased())
        XCTAssertEqual(alpha, .alpha)
        
        let add = SKBlendMode(stringValue: strings.add.uppercased())
        XCTAssertEqual(add, .add)
        
        let subtract = SKBlendMode(stringValue: strings.subtract.uppercased())
        XCTAssertEqual(subtract, .subtract)
        
        let multiply = SKBlendMode(stringValue: strings.multiply.uppercased())
        XCTAssertEqual(multiply, .multiply)
        
        let multiplyX2 = SKBlendMode(stringValue: strings.multiplyX2.uppercased())
        XCTAssertEqual(multiplyX2, .multiplyX2)
        
        let screen = SKBlendMode(stringValue: strings.screen.uppercased())
        XCTAssertEqual(screen, .screen)
        
        let replace = SKBlendMode(stringValue: strings.replace.uppercased())
        XCTAssertEqual(replace, .replace)
        
        let invalid = SKBlendMode(stringValue: "INVALID")
        XCTAssertNil(invalid)
    }
    
    func testStringValue() {
        typealias strings = SKBlendMode.StringValues
        
        let alpha = SKBlendMode.alpha
        XCTAssertEqual(alpha.stringValue, strings.alpha)
        
        let add = SKBlendMode.add
        XCTAssertEqual(add.stringValue, strings.add)
        
        let subtract = SKBlendMode.subtract
        XCTAssertEqual(subtract.stringValue, strings.subtract)
        
        let multiply = SKBlendMode.multiply
        XCTAssertEqual(multiply.stringValue, strings.multiply)
        
        let multiplyX2 = SKBlendMode.multiplyX2
        XCTAssertEqual(multiplyX2.stringValue, strings.multiplyX2)
        
        let screen = SKBlendMode.screen
        XCTAssertEqual(screen.stringValue, strings.screen)
        
        let replace = SKBlendMode.replace
        XCTAssertEqual(replace.stringValue, strings.replace)
    }
}
