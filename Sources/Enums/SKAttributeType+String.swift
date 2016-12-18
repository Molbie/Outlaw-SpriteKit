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
    public struct StringValues {
        public static let none = "none"
        public static let float = "float"
        public static let vectorFloat2 = "vectorfloat2"
        public static let vectorFloat3 = "vectorfloat3"
        public static let vectorFloat4 = "vectorfloat4"
        public static let halfFloat = "halffloat"
        public static let vectorHalfFloat2 = "vectorhalffloat2"
        public static let vectorHalfFloat3 = "vectorhalffloat3"
        public static let vectorHalfFloat4 = "vectorhalffloat4"
    }
}

@available(iOS 9.0, OSX 10.11, *)
public extension SKAttributeType {
    public init?(stringValue: String) {
        typealias strings = SKAttributeType.StringValues
        
        switch stringValue.lowercased() {
            case strings.none:
                self = .none
            case strings.float:
                self = .float
            case strings.vectorFloat2:
                self = .vectorFloat2
            case strings.vectorFloat3:
                self = .vectorFloat3
            case strings.vectorFloat4:
                self = .vectorFloat4
            case strings.halfFloat:
                self = .halfFloat
            case strings.vectorHalfFloat2:
                self = .vectorHalfFloat2
            case strings.vectorHalfFloat3:
                self = .vectorHalfFloat3
            case strings.vectorHalfFloat4:
                self = .vectorHalfFloat4
            default:
                return nil
        }
    }
    
    public var stringValue: String {
        typealias strings = SKAttributeType.StringValues
        
        let result: String
        switch self {
            case .none:
                result = strings.none
            case .float:
                result = strings.float
            case .vectorFloat2:
                result = strings.vectorFloat2
            case .vectorFloat3:
                result = strings.vectorFloat3
            case .vectorFloat4:
                result = strings.vectorFloat4
            case .halfFloat:
                result = strings.halfFloat
            case .vectorHalfFloat2:
                result = strings.vectorHalfFloat2
            case .vectorHalfFloat3:
                result = strings.vectorHalfFloat3
            case .vectorHalfFloat4:
                result = strings.vectorHalfFloat4
        }
        
        return result
    }
}
