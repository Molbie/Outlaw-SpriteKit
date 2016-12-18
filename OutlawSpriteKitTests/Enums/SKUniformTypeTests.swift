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
        let none = SKUniformType(stringValue: "none")
        XCTAssertEqual(none, SKUniformType.none)
        
        let float = SKUniformType(stringValue: "float")
        XCTAssertEqual(float, .float)
        
        let floatVector2 = SKUniformType(stringValue: "floatvector2")
        XCTAssertEqual(floatVector2, .floatVector2)
        
        let floatVector3 = SKUniformType(stringValue: "floatvector3")
        XCTAssertEqual(floatVector3, .floatVector3)
        
        let floatVector4 = SKUniformType(stringValue: "floatvector4")
        XCTAssertEqual(floatVector4, .floatVector4)
        
        let floatMatrix2 = SKUniformType(stringValue: "floatmatrix2")
        XCTAssertEqual(floatMatrix2, .floatMatrix2)
        
        let floatMatrix3 = SKUniformType(stringValue: "floatmatrix3")
        XCTAssertEqual(floatMatrix3, .floatMatrix3)
        
        let floatMatrix4 = SKUniformType(stringValue: "floatmatrix4")
        XCTAssertEqual(floatMatrix4, .floatMatrix4)
        
        let texture = SKUniformType(stringValue: "texture")
        XCTAssertEqual(texture, .texture)
        
        let invalid = SKUniformType(stringValue: "invalid")
        XCTAssertNil(invalid)
    }
    
    func testUpperStringInit() {
        let none = SKUniformType(stringValue: "NONE")
        XCTAssertEqual(none, SKUniformType.none)
        
        let float = SKUniformType(stringValue: "FLOAT")
        XCTAssertEqual(float, .float)
        
        let floatVector2 = SKUniformType(stringValue: "FLOATVECTOR2")
        XCTAssertEqual(floatVector2, .floatVector2)
        
        let floatVector3 = SKUniformType(stringValue: "FLOATVECTOR3")
        XCTAssertEqual(floatVector3, .floatVector3)
        
        let floatVector4 = SKUniformType(stringValue: "FLOATVECTOR4")
        XCTAssertEqual(floatVector4, .floatVector4)
        
        let floatMatrix2 = SKUniformType(stringValue: "FLOATMATRIX2")
        XCTAssertEqual(floatMatrix2, .floatMatrix2)
        
        let floatMatrix3 = SKUniformType(stringValue: "FLOATMATRIX3")
        XCTAssertEqual(floatMatrix3, .floatMatrix3)
        
        let floatMatrix4 = SKUniformType(stringValue: "FLOATMATRIX4")
        XCTAssertEqual(floatMatrix4, .floatMatrix4)
        
        let texture = SKUniformType(stringValue: "TEXTURE")
        XCTAssertEqual(texture, .texture)
        
        let invalid = SKUniformType(stringValue: "INVALID")
        XCTAssertNil(invalid)
    }
    
    func testStringValue() {
        let none = SKUniformType.none
        XCTAssertEqual(none.stringValue, "none")
        
        let float = SKUniformType.float
        XCTAssertEqual(float.stringValue, "float")
        
        let floatVector2 = SKUniformType.floatVector2
        XCTAssertEqual(floatVector2.stringValue, "floatvector2")
        
        let floatVector3 = SKUniformType.floatVector3
        XCTAssertEqual(floatVector3.stringValue, "floatvector3")
        
        let floatVector4 = SKUniformType.floatVector4
        XCTAssertEqual(floatVector4.stringValue, "floatvector4")
        
        let floatMatrix2 = SKUniformType.floatMatrix2
        XCTAssertEqual(floatMatrix2.stringValue, "floatmatrix2")
        
        let floatMatrix3 = SKUniformType.floatMatrix3
        XCTAssertEqual(floatMatrix3.stringValue, "floatmatrix3")
        
        let floatMatrix4 = SKUniformType.floatMatrix4
        XCTAssertEqual(floatMatrix4.stringValue, "floatmatrix4")
        
        let texture = SKUniformType.texture
        XCTAssertEqual(texture.stringValue, "texture")
    }
}
