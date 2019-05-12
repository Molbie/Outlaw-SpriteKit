//
//  SKAttributeTypeTests.swift
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


@available(iOS 9.0, OSX 10.11, *)
class SKAttributeTypeTests: XCTestCase {
    fileprivate typealias strings = SKAttributeType.StringValues
    
    func testStringInit() {
        let none = SKAttributeType(stringValue: strings.none)
        XCTAssertEqual(none, SKAttributeType.none)
        
        let float = SKAttributeType(stringValue: strings.float)
        XCTAssertEqual(float, .float)
        
        let vectorFloat2 = SKAttributeType(stringValue: strings.vectorFloat2)
        XCTAssertEqual(vectorFloat2, .vectorFloat2)
        
        let vectorFloat3 = SKAttributeType(stringValue: strings.vectorFloat3)
        XCTAssertEqual(vectorFloat3, .vectorFloat3)
        
        let vectorFloat4 = SKAttributeType(stringValue: strings.vectorFloat4)
        XCTAssertEqual(vectorFloat4, .vectorFloat4)
        
        let halfFloat = SKAttributeType(stringValue: strings.halfFloat)
        XCTAssertEqual(halfFloat, .halfFloat)
        
        let vectorHalfFloat2 = SKAttributeType(stringValue: strings.vectorHalfFloat2)
        XCTAssertEqual(vectorHalfFloat2, .vectorHalfFloat2)
        
        let vectorHalfFloat3 = SKAttributeType(stringValue: strings.vectorHalfFloat3)
        XCTAssertEqual(vectorHalfFloat3, .vectorHalfFloat3)
        
        let vectorHalfFloat4 = SKAttributeType(stringValue: strings.vectorHalfFloat4)
        XCTAssertEqual(vectorHalfFloat4, .vectorHalfFloat4)
        
        let invalid = SKAttributeType(stringValue: "invalid")
        XCTAssertNil(invalid)
    }
    
    func testUpperStringInit() {
        let none = SKAttributeType(stringValue: strings.none.uppercased())
        XCTAssertEqual(none, SKAttributeType.none)
        
        let float = SKAttributeType(stringValue: strings.float.uppercased())
        XCTAssertEqual(float, .float)
        
        let vectorFloat2 = SKAttributeType(stringValue: strings.vectorFloat2.uppercased())
        XCTAssertEqual(vectorFloat2, .vectorFloat2)
        
        let vectorFloat3 = SKAttributeType(stringValue: strings.vectorFloat3.uppercased())
        XCTAssertEqual(vectorFloat3, .vectorFloat3)
        
        let vectorFloat4 = SKAttributeType(stringValue: strings.vectorFloat4.uppercased())
        XCTAssertEqual(vectorFloat4, .vectorFloat4)
        
        let halfFloat = SKAttributeType(stringValue: strings.halfFloat.uppercased())
        XCTAssertEqual(halfFloat, .halfFloat)
        
        let vectorHalfFloat2 = SKAttributeType(stringValue: strings.vectorHalfFloat2.uppercased())
        XCTAssertEqual(vectorHalfFloat2, .vectorHalfFloat2)
        
        let vectorHalfFloat3 = SKAttributeType(stringValue: strings.vectorHalfFloat3.uppercased())
        XCTAssertEqual(vectorHalfFloat3, .vectorHalfFloat3)
        
        let vectorHalfFloat4 = SKAttributeType(stringValue: strings.vectorHalfFloat4.uppercased())
        XCTAssertEqual(vectorHalfFloat4, .vectorHalfFloat4)
        
        let invalid = SKAttributeType(stringValue: "INVALID")
        XCTAssertNil(invalid)
    }
    
    func testStringValue() {
        let none = SKAttributeType.none
        XCTAssertEqual(none.stringValue, strings.none)
        
        let float = SKAttributeType.float
        XCTAssertEqual(float.stringValue, strings.float)
        
        let vectorFloat2 = SKAttributeType.vectorFloat2
        XCTAssertEqual(vectorFloat2.stringValue, strings.vectorFloat2)
        
        let vectorFloat3 = SKAttributeType.vectorFloat3
        XCTAssertEqual(vectorFloat3.stringValue, strings.vectorFloat3)
        
        let vectorFloat4 = SKAttributeType.vectorFloat4
        XCTAssertEqual(vectorFloat4.stringValue, strings.vectorFloat4)
        
        let halfFloat = SKAttributeType.halfFloat
        XCTAssertEqual(halfFloat.stringValue, strings.halfFloat)
        
        let vectorHalfFloat2 = SKAttributeType.vectorHalfFloat2
        XCTAssertEqual(vectorHalfFloat2.stringValue, strings.vectorHalfFloat2)
        
        let vectorHalfFloat3 = SKAttributeType.vectorHalfFloat3
        XCTAssertEqual(vectorHalfFloat3.stringValue, strings.vectorHalfFloat3)
        
        let vectorHalfFloat4 = SKAttributeType.vectorHalfFloat4
        XCTAssertEqual(vectorHalfFloat4.stringValue, strings.vectorHalfFloat4)
    }
}
