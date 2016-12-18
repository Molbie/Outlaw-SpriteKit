//
//  SKUniformType+String.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/17/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit


@available(OSX 10.10, *)
public extension SKUniformType {
    public struct StringValues {
        public static let none = "none"
        public static let float = "float"
        public static let floatVector2 = "floatvector2"
        public static let floatVector3 = "floatvector3"
        public static let floatVector4 = "floatvector4"
        public static let floatMatrix2 = "floatmatrix2"
        public static let floatMatrix3 = "floatmatrix3"
        public static let floatMatrix4 = "floatmatrix4"
        public static let texture = "texture"
    }
}

@available(OSX 10.10, *)
public extension SKUniformType {
    public init?(stringValue: String) {
        typealias strings = SKUniformType.StringValues
        
        switch stringValue.lowercased() {
            case strings.none:
                self = .none
            case strings.float:
                self = .float
            case strings.floatVector2:
                self = .floatVector2
            case strings.floatVector3:
                self = .floatVector3
            case strings.floatVector4:
                self = .floatVector4
            case strings.floatMatrix2:
                self = .floatMatrix2
            case strings.floatMatrix3:
                self = .floatMatrix3
            case strings.floatMatrix4:
                self = .floatMatrix4
            case strings.texture:
                self = .texture
            default:
                return nil
        }
    }
    
    public var stringValue: String {
        typealias strings = SKUniformType.StringValues
        
        let result: String
        switch self {
            case .none:
                result = strings.none
            case .float:
                result = strings.float
            case .floatVector2:
                result = strings.floatVector2
            case .floatVector3:
                result = strings.floatVector3
            case .floatVector4:
                result = strings.floatVector4
            case .floatMatrix2:
                result = strings.floatMatrix2
            case .floatMatrix3:
                result = strings.floatMatrix3
            case .floatMatrix4:
                result = strings.floatMatrix4
            case .texture:
                result = strings.texture
        }
        
        return result
    }
}
