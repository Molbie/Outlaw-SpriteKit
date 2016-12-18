//
//  SKRepeatMode+String.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/16/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit


public extension SKRepeatMode {
    public init?(stringValue: String) {
        switch stringValue.lowercased() {
            case "clamp":
                self = .clamp
            case "loop":
                self = .loop
            default:
                return nil
        }
    }
    
    public var stringValue: String {
        let result: String
        
        switch self {
            case .clamp:
                result = "clamp"
            case .loop:
                result = "loop"
        }
        
        return result
    }
}
