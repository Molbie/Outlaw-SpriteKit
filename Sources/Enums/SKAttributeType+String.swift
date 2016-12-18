//
//  SKAttributeType+String.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/17/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit


@available(iOS 9.0, OSX 10.11, *)
public extension SKAttributeType {
    public init?(stringValue: String) {
        switch stringValue.lowercased() {
            case "none":
                self = .none
            case "float":
                self = .float
            case "vectorfloat2":
                self = .vectorFloat2
            case "vectorfloat3":
                self = .vectorFloat3
            case "vectorfloat4":
                self = .vectorFloat4
            case "halffloat":
                self = .halfFloat
            case "vectorhalffloat2":
                self = .vectorHalfFloat2
            case "vectorhalffloat3":
                self = .vectorHalfFloat3
            case "vectorhalffloat4":
                self = .vectorHalfFloat4
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
            case .vectorFloat2:
                result = "vectorfloat2"
            case .vectorFloat3:
                result = "vectorfloat3"
            case .vectorFloat4:
                result = "vectorfloat4"
            case .halfFloat:
                result = "halffloat"
            case .vectorHalfFloat2:
                result = "vectorhalffloat2"
            case .vectorHalfFloat3:
                result = "vectorhalffloat3"
            case .vectorHalfFloat4:
                result = "vectorhalffloat4"
        }
        
        return result
    }
}
