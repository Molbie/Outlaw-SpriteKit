//
//  SKLabelVerticalAlignmentModeTests.swift
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


class SKLabelVerticalAlignmentModeTests: XCTestCase {
    func testStringInit() {
        typealias strings = SKLabelVerticalAlignmentMode.StringValues
        
        let baseline = SKLabelVerticalAlignmentMode(stringValue: strings.baseline)
        XCTAssertEqual(baseline, .baseline)
        
        let center = SKLabelVerticalAlignmentMode(stringValue: strings.center)
        XCTAssertEqual(center, .center)
        
        let top = SKLabelVerticalAlignmentMode(stringValue: strings.top)
        XCTAssertEqual(top, .top)
        
        let bottom = SKLabelVerticalAlignmentMode(stringValue: strings.bottom)
        XCTAssertEqual(bottom, .bottom)
        
        let invalid = SKLabelVerticalAlignmentMode(stringValue: "invalid")
        XCTAssertNil(invalid)
    }
    
    func testUpperStringInit() {
        typealias strings = SKLabelVerticalAlignmentMode.StringValues
        
        let baseline = SKLabelVerticalAlignmentMode(stringValue: strings.baseline.uppercased())
        XCTAssertEqual(baseline, .baseline)
        
        let center = SKLabelVerticalAlignmentMode(stringValue: strings.center.uppercased())
        XCTAssertEqual(center, .center)
        
        let top = SKLabelVerticalAlignmentMode(stringValue: strings.top.uppercased())
        XCTAssertEqual(top, .top)
        
        let bottom = SKLabelVerticalAlignmentMode(stringValue: strings.bottom.uppercased())
        XCTAssertEqual(bottom, .bottom)
        
        let invalid = SKLabelVerticalAlignmentMode(stringValue: "INVALID")
        XCTAssertNil(invalid)
    }
    
    func testStringValue() {
        typealias strings = SKLabelVerticalAlignmentMode.StringValues
        
        let baseline = SKLabelVerticalAlignmentMode.baseline
        XCTAssertEqual(baseline.stringValue, strings.baseline)
        
        let center = SKLabelVerticalAlignmentMode.center
        XCTAssertEqual(center.stringValue, strings.center)
        
        let top = SKLabelVerticalAlignmentMode.top
        XCTAssertEqual(top.stringValue, strings.top)
        
        let bottom = SKLabelVerticalAlignmentMode.bottom
        XCTAssertEqual(bottom.stringValue, strings.bottom)
    }
}
