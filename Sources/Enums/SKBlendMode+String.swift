//
//  SKBlendMode+String.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/16/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit


public extension SKBlendMode {
    public init?(stringValue: String) {
        switch stringValue.lowercased() {
            case "alpha":
                self = .alpha
            case "add":
                self = .add
            case "subtract":
                self = .subtract
            case "multiply":
                self = .multiply
            case "multiplyx2":
                self = .multiplyX2
            case "screen":
                self = .screen
            case "replace":
                self = .replace
            default:
                return nil
        }
    }
    
    public var stringValue: String {
        let result: String
        
        switch self {
            case .alpha:
                result = "alpha"
            case .add:
                result = "add"
            case .subtract:
                result = "subtract"
            case .multiply:
                result = "multiply"
            case .multiplyX2:
                result = "multiplyx2"
            case .screen:
                result = "screen"
            case .replace:
                result = "replace"
        }
        
        return result
    }
}
