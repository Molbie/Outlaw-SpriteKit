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
    fileprivate typealias strings = SKSceneScaleMode.StringValues
    
    func testStringInit() {
        let fill = SKSceneScaleMode(stringValue: strings.fill)
        XCTAssertEqual(fill, .fill)
        
        let aspectFill = SKSceneScaleMode(stringValue: strings.aspectFill)
        XCTAssertEqual(aspectFill, .aspectFill)
        
        let aspectFit = SKSceneScaleMode(stringValue: strings.aspectFit)
        XCTAssertEqual(aspectFit, .aspectFit)
        
        let resizeFill = SKSceneScaleMode(stringValue: strings.resizeFill)
        XCTAssertEqual(resizeFill, .resizeFill)
        
        let invalid = SKSceneScaleMode(stringValue: "invalid")
        XCTAssertNil(invalid)
    }
    
    func testUpperStringInit() {
        let fill = SKSceneScaleMode(stringValue: strings.fill.uppercased())
        XCTAssertEqual(fill, .fill)
        
        let aspectFill = SKSceneScaleMode(stringValue: strings.aspectFill.uppercased())
        XCTAssertEqual(aspectFill, .aspectFill)
        
        let aspectFit = SKSceneScaleMode(stringValue: strings.aspectFit.uppercased())
        XCTAssertEqual(aspectFit, .aspectFit)
        
        let resizeFill = SKSceneScaleMode(stringValue: strings.resizeFill.uppercased())
        XCTAssertEqual(resizeFill, .resizeFill)
        
        let invalid = SKSceneScaleMode(stringValue: "INVALID")
        XCTAssertNil(invalid)
    }
    
    func testStringValue() {
        let fill = SKSceneScaleMode.fill
        XCTAssertEqual(fill.stringValue, strings.fill)
        
        let aspectFill = SKSceneScaleMode.aspectFill
        XCTAssertEqual(aspectFill.stringValue, strings.aspectFill)
        
        let aspectFit = SKSceneScaleMode.aspectFit
        XCTAssertEqual(aspectFit.stringValue, strings.aspectFit)
        
        let resizeFill = SKSceneScaleMode.resizeFill
        XCTAssertEqual(resizeFill.stringValue, strings.resizeFill)
    }
}
