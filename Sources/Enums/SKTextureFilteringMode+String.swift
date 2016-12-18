//
//  SKTextureFilteringMode+String.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/17/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit


public extension SKTextureFilteringMode {
    public init?(stringValue: String) {
        switch stringValue.lowercased() {
            case "nearest":
                self = .nearest
            case "linear":
                self = .linear
            default:
                return nil
        }
    }
    
    public var stringValue: String {
        let result: String
        
        switch self {
            case .nearest:
                result = "nearest"
            case .linear:
                result = "linear"
        }
        
        return result
    }
}
