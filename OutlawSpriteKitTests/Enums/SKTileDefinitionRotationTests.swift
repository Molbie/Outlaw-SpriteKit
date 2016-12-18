//
//  SKTileDefinitionRotationTests.swift
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


@available(iOS 10.0, tvOS 10.0, OSX 10.12, watchOS 3.0, *)
class SKTileDefinitionRotationTests: XCTestCase {
    func testStringInit() {
        let rotation0 = SKTileDefinitionRotation(stringValue: "rotation0")
        XCTAssertEqual(rotation0, .rotation0)
        
        let rotation90 = SKTileDefinitionRotation(stringValue: "rotation90")
        XCTAssertEqual(rotation90, .rotation90)
        
        let rotation180 = SKTileDefinitionRotation(stringValue: "rotation180")
        XCTAssertEqual(rotation180, .rotation180)
        
        let rotation270 = SKTileDefinitionRotation(stringValue: "rotation270")
        XCTAssertEqual(rotation270, .rotation270)
        
        let invalid = SKTileDefinitionRotation(stringValue: "invalid")
        XCTAssertNil(invalid)
    }
    
    func testUpperStringInit() {
        let rotation0 = SKTileDefinitionRotation(stringValue: "ROTATION0")
        XCTAssertEqual(rotation0, .rotation0)
        
        let rotation90 = SKTileDefinitionRotation(stringValue: "ROTATION90")
        XCTAssertEqual(rotation90, .rotation90)
        
        let rotation180 = SKTileDefinitionRotation(stringValue: "ROTATION180")
        XCTAssertEqual(rotation180, .rotation180)
        
        let rotation270 = SKTileDefinitionRotation(stringValue: "ROTATION270")
        XCTAssertEqual(rotation270, .rotation270)
        
        let invalid = SKTileDefinitionRotation(stringValue: "INVALID")
        XCTAssertNil(invalid)
    }
    
    func testStringValue() {
        let rotation0 = SKTileDefinitionRotation.rotation0
        XCTAssertEqual(rotation0.stringValue, "rotation0")
        
        let rotation90 = SKTileDefinitionRotation.rotation90
        XCTAssertEqual(rotation90.stringValue, "rotation90")
        
        let rotation180 = SKTileDefinitionRotation.rotation180
        XCTAssertEqual(rotation180.stringValue, "rotation180")
        
        let rotation270 = SKTileDefinitionRotation.rotation270
        XCTAssertEqual(rotation270.stringValue, "rotation270")
    }
}
