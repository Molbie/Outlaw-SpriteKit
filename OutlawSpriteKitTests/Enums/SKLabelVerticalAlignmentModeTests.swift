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
        let baseline = SKLabelVerticalAlignmentMode(stringValue: "baseline")
        XCTAssertEqual(baseline, .baseline)
        
        let center = SKLabelVerticalAlignmentMode(stringValue: "center")
        XCTAssertEqual(center, .center)
        
        let top = SKLabelVerticalAlignmentMode(stringValue: "top")
        XCTAssertEqual(top, .top)
        
        let bottom = SKLabelVerticalAlignmentMode(stringValue: "bottom")
        XCTAssertEqual(bottom, .bottom)
        
        let invalid = SKLabelVerticalAlignmentMode(stringValue: "invalid")
        XCTAssertNil(invalid)
    }
    
    func testUpperStringInit() {
        let baseline = SKLabelVerticalAlignmentMode(stringValue: "BASELINE")
        XCTAssertEqual(baseline, .baseline)
        
        let center = SKLabelVerticalAlignmentMode(stringValue: "CENTER")
        XCTAssertEqual(center, .center)
        
        let top = SKLabelVerticalAlignmentMode(stringValue: "TOP")
        XCTAssertEqual(top, .top)
        
        let bottom = SKLabelVerticalAlignmentMode(stringValue: "BOTTOM")
        XCTAssertEqual(bottom, .bottom)
        
        let invalid = SKLabelVerticalAlignmentMode(stringValue: "INVALID")
        XCTAssertNil(invalid)
    }
    
    func testStringValue() {
        let baseline = SKLabelVerticalAlignmentMode.baseline
        XCTAssertEqual(baseline.stringValue, "baseline")
        
        let center = SKLabelVerticalAlignmentMode.center
        XCTAssertEqual(center.stringValue, "center")
        
        let top = SKLabelVerticalAlignmentMode.top
        XCTAssertEqual(top.stringValue, "top")
        
        let bottom = SKLabelVerticalAlignmentMode.bottom
        XCTAssertEqual(bottom.stringValue, "bottom")
    }
}
