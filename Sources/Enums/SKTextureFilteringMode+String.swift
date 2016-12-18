//
//  SKTextureFilteringMode+String.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/17/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit


public extension SKTextureFilteringMode {
    public struct StringValues {
        public static let nearest = "nearest"
        public static let linear = "linear"
    }
}

public extension SKTextureFilteringMode {
    public init?(stringValue: String) {
        typealias strings = SKTextureFilteringMode.StringValues
        
        switch stringValue.lowercased() {
            case strings.nearest:
                self = .nearest
            case strings.linear:
                self = .linear
            default:
                return nil
        }
    }
    
    public var stringValue: String {
        typealias strings = SKTextureFilteringMode.StringValues
        
        let result: String
        switch self {
            case .nearest:
                result = strings.nearest
            case .linear:
                result = strings.linear
        }
        
        return result
    }
}
