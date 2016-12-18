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
    public init?(stringValue: String) {
        switch stringValue.lowercased() {
            case "none":
                self = .none
            case "float":
                self = .float
            case "floatvector2":
                self = .floatVector2
            case "floatvector3":
                self = .floatVector3
            case "floatvector4":
                self = .floatVector4
            case "floatmatrix2":
                self = .floatMatrix2
            case "floatmatrix3":
                self = .floatMatrix3
            case "floatmatrix4":
                self = .floatMatrix4
            case "texture":
                self = .texture
            default:
                return nil
        }
    }
    
    public var stringValue: String {
        let result: String
        
        switch self {
            case .none:
                result = "none"
            case .float:
                result = "float"
            case .floatVector2:
                result = "floatvector2"
            case .floatVector3:
                result = "floatvector3"
            case .floatVector4:
                result = "floatvector4"
            case .floatMatrix2:
                result = "floatmatrix2"
            case .floatMatrix3:
                result = "floatmatrix3"
            case .floatMatrix4:
                result = "floatmatrix4"
            case .texture:
                result = "texture"
        }
        
        return result
    }
}
