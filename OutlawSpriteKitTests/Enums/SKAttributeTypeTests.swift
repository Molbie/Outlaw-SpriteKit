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
    func testStringInit() {
        let none = SKAttributeType(stringValue: "none")
        XCTAssertEqual(none, SKAttributeType.none)
        
        let float = SKAttributeType(stringValue: "float")
        XCTAssertEqual(float, .float)
        
        let vectorFloat2 = SKAttributeType(stringValue: "vectorfloat2")
        XCTAssertEqual(vectorFloat2, .vectorFloat2)
        
        let vectorFloat3 = SKAttributeType(stringValue: "vectorfloat3")
        XCTAssertEqual(vectorFloat3, .vectorFloat3)
        
        let vectorFloat4 = SKAttributeType(stringValue: "vectorfloat4")
        XCTAssertEqual(vectorFloat4, .vectorFloat4)
        
        let halfFloat = SKAttributeType(stringValue: "halffloat")
        XCTAssertEqual(halfFloat, .halfFloat)
        
        let vectorHalfFloat2 = SKAttributeType(stringValue: "vectorhalffloat2")
        XCTAssertEqual(vectorHalfFloat2, .vectorHalfFloat2)
        
        let vectorHalfFloat3 = SKAttributeType(stringValue: "vectorhalffloat3")
        XCTAssertEqual(vectorHalfFloat3, .vectorHalfFloat3)
        
        let vectorHalfFloat4 = SKAttributeType(stringValue: "vectorhalffloat4")
        XCTAssertEqual(vectorHalfFloat4, .vectorHalfFloat4)
        
        let invalid = SKAttributeType(stringValue: "invalid")
        XCTAssertNil(invalid)
    }
    
    func testUpperStringInit() {
        let none = SKAttributeType(stringValue: "NONE")
        XCTAssertEqual(none, SKAttributeType.none)
        
        let float = SKAttributeType(stringValue: "FLOAT")
        XCTAssertEqual(float, .float)
        
        let vectorFloat2 = SKAttributeType(stringValue: "VECTORFLOAT2")
        XCTAssertEqual(vectorFloat2, .vectorFloat2)
        
        let vectorFloat3 = SKAttributeType(stringValue: "VECTORFLOAT3")
        XCTAssertEqual(vectorFloat3, .vectorFloat3)
        
        let vectorFloat4 = SKAttributeType(stringValue: "VECTORFLOAT4")
        XCTAssertEqual(vectorFloat4, .vectorFloat4)
        
        let halfFloat = SKAttributeType(stringValue: "HALFFLOAT")
        XCTAssertEqual(halfFloat, .halfFloat)
        
        let vectorHalfFloat2 = SKAttributeType(stringValue: "VECTORHALFFLOAT2")
        XCTAssertEqual(vectorHalfFloat2, .vectorHalfFloat2)
        
        let vectorHalfFloat3 = SKAttributeType(stringValue: "VECTORHALFFLOAT3")
        XCTAssertEqual(vectorHalfFloat3, .vectorHalfFloat3)
        
        let vectorHalfFloat4 = SKAttributeType(stringValue: "VECTORHALFFLOAT4")
        XCTAssertEqual(vectorHalfFloat4, .vectorHalfFloat4)
        
        let invalid = SKAttributeType(stringValue: "INVALID")
        XCTAssertNil(invalid)
    }
    
    func testStringValue() {
        let none = SKAttributeType.none
        XCTAssertEqual(none.stringValue, "none")
        
        let float = SKAttributeType.float
        XCTAssertEqual(float.stringValue, "float")
        
        let vectorFloat2 = SKAttributeType.vectorFloat2
        XCTAssertEqual(vectorFloat2.stringValue, "vectorfloat2")
        
        let vectorFloat3 = SKAttributeType.vectorFloat3
        XCTAssertEqual(vectorFloat3.stringValue, "vectorfloat3")
        
        let vectorFloat4 = SKAttributeType.vectorFloat4
        XCTAssertEqual(vectorFloat4.stringValue, "vectorfloat4")
        
        let halfFloat = SKAttributeType.halfFloat
        XCTAssertEqual(halfFloat.stringValue, "halffloat")
        
        let vectorHalfFloat2 = SKAttributeType.vectorHalfFloat2
        XCTAssertEqual(vectorHalfFloat2.stringValue, "vectorhalffloat2")
        
        let vectorHalfFloat3 = SKAttributeType.vectorHalfFloat3
        XCTAssertEqual(vectorHalfFloat3.stringValue, "vectorhalffloat3")
        
        let vectorHalfFloat4 = SKAttributeType.vectorHalfFloat4
        XCTAssertEqual(vectorHalfFloat4.stringValue, "vectorhalffloat4")
    }
}
