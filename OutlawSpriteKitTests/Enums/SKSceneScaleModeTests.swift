//
//  SKSceneScaleModeTests.swift
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


class SKSceneScaleModeTests: XCTestCase {
    func testStringInit() {
        let fill = SKSceneScaleMode(stringValue: "fill")
        XCTAssertEqual(fill, .fill)
        
        let aspectFill = SKSceneScaleMode(stringValue: "aspectfill")
        XCTAssertEqual(aspectFill, .aspectFill)
        
        let aspectFit = SKSceneScaleMode(stringValue: "aspectfit")
        XCTAssertEqual(aspectFit, .aspectFit)
        
        let resizeFill = SKSceneScaleMode(stringValue: "resizefill")
        XCTAssertEqual(resizeFill, .resizeFill)
        
        let invalid = SKSceneScaleMode(stringValue: "invalid")
        XCTAssertNil(invalid)
    }
    
    func testUpperStringInit() {
        let fill = SKSceneScaleMode(stringValue: "FILL")
        XCTAssertEqual(fill, .fill)
        
        let aspectFill = SKSceneScaleMode(stringValue: "ASPECTFILL")
        XCTAssertEqual(aspectFill, .aspectFill)
        
        let aspectFit = SKSceneScaleMode(stringValue: "ASPECTFIT")
        XCTAssertEqual(aspectFit, .aspectFit)
        
        let resizeFill = SKSceneScaleMode(stringValue: "RESIZEFILL")
        XCTAssertEqual(resizeFill, .resizeFill)
        
        let invalid = SKSceneScaleMode(stringValue: "INVALID")
        XCTAssertNil(invalid)
    }
    
    func testStringValue() {
        let fill = SKSceneScaleMode.fill
        XCTAssertEqual(fill.stringValue, "fill")
        
        let aspectFill = SKSceneScaleMode.aspectFill
        XCTAssertEqual(aspectFill.stringValue, "aspectfill")
        
        let aspectFit = SKSceneScaleMode.aspectFit
        XCTAssertEqual(aspectFit.stringValue, "aspectfit")
        
        let resizeFill = SKSceneScaleMode.resizeFill
        XCTAssertEqual(resizeFill.stringValue, "resizefill")
    }
}
