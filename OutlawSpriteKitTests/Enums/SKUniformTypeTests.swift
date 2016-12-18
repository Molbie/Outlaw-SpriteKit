//
//  SKUniformTypeTests.swift
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


@available(OSX 10.10, *)
class SKUniformTypeTests: XCTestCase {
    func testStringInit() {
        typealias strings = SKUniformType.StringValues
        
        let none = SKUniformType(stringValue: strings.none)
        XCTAssertEqual(none, SKUniformType.none)
        
        let float = SKUniformType(stringValue: strings.float)
        XCTAssertEqual(float, .float)
        
        let floatVector2 = SKUniformType(stringValue: strings.floatVector2)
        XCTAssertEqual(floatVector2, .floatVector2)
        
        let floatVector3 = SKUniformType(stringValue: strings.floatVector3)
        XCTAssertEqual(floatVector3, .floatVector3)
        
        let floatVector4 = SKUniformType(stringValue: strings.floatVector4)
        XCTAssertEqual(floatVector4, .floatVector4)
        
        let floatMatrix2 = SKUniformType(stringValue: strings.floatMatrix2)
        XCTAssertEqual(floatMatrix2, .floatMatrix2)
        
        let floatMatrix3 = SKUniformType(stringValue: strings.floatMatrix3)
        XCTAssertEqual(floatMatrix3, .floatMatrix3)
        
        let floatMatrix4 = SKUniformType(stringValue: strings.floatMatrix4)
        XCTAssertEqual(floatMatrix4, .floatMatrix4)
        
        let texture = SKUniformType(stringValue: strings.texture)
        XCTAssertEqual(texture, .texture)
        
        let invalid = SKUniformType(stringValue: "invalid")
        XCTAssertNil(invalid)
    }
    
    func testUpperStringInit() {
        typealias strings = SKUniformType.StringValues
        
        let none = SKUniformType(stringValue: strings.none.uppercased())
        XCTAssertEqual(none, SKUniformType.none)
        
        let float = SKUniformType(stringValue: strings.float.uppercased())
        XCTAssertEqual(float, .float)
        
        let floatVector2 = SKUniformType(stringValue: strings.floatVector2.uppercased())
        XCTAssertEqual(floatVector2, .floatVector2)
        
        let floatVector3 = SKUniformType(stringValue: strings.floatVector3.uppercased())
        XCTAssertEqual(floatVector3, .floatVector3)
        
        let floatVector4 = SKUniformType(stringValue: strings.floatVector4.uppercased())
        XCTAssertEqual(floatVector4, .floatVector4)
        
        let floatMatrix2 = SKUniformType(stringValue: strings.floatMatrix2.uppercased())
        XCTAssertEqual(floatMatrix2, .floatMatrix2)
        
        let floatMatrix3 = SKUniformType(stringValue: strings.floatMatrix3.uppercased())
        XCTAssertEqual(floatMatrix3, .floatMatrix3)
        
        let floatMatrix4 = SKUniformType(stringValue: strings.floatMatrix4.uppercased())
        XCTAssertEqual(floatMatrix4, .floatMatrix4)
        
        let texture = SKUniformType(stringValue: strings.texture.uppercased())
        XCTAssertEqual(texture, .texture)
        
        let invalid = SKUniformType(stringValue: "INVALID")
        XCTAssertNil(invalid)
    }
    
    func testStringValue() {
        typealias strings = SKUniformType.StringValues
        
        let none = SKUniformType.none
        XCTAssertEqual(none.stringValue, strings.none)
        
        let float = SKUniformType.float
        XCTAssertEqual(float.stringValue, strings.float)
        
        let floatVector2 = SKUniformType.floatVector2
        XCTAssertEqual(floatVector2.stringValue, strings.floatVector2)
        
        let floatVector3 = SKUniformType.floatVector3
        XCTAssertEqual(floatVector3.stringValue, strings.floatVector3)
        
        let floatVector4 = SKUniformType.floatVector4
        XCTAssertEqual(floatVector4.stringValue, strings.floatVector4)
        
        let floatMatrix2 = SKUniformType.floatMatrix2
        XCTAssertEqual(floatMatrix2.stringValue, strings.floatMatrix2)
        
        let floatMatrix3 = SKUniformType.floatMatrix3
        XCTAssertEqual(floatMatrix3.stringValue, strings.floatMatrix3)
        
        let floatMatrix4 = SKUniformType.floatMatrix4
        XCTAssertEqual(floatMatrix4.stringValue, strings.floatMatrix4)
        
        let texture = SKUniformType.texture
        XCTAssertEqual(texture.stringValue, strings.texture)
    }
}
