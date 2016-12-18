//
//  SKActionTimingMode+String.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/17/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit


public extension SKActionTimingMode {
    public init?(stringValue: String) {
        switch stringValue.lowercased() {
            case "linear":
                self = .linear
            case "easein":
                self = .easeIn
            case "easeout":
                self = .easeOut
            case "easeineaseout":
                self = .easeInEaseOut
            default:
                return nil
        }
    }
    
    public var stringValue: String {
        let result: String
        
        switch self {
            case .linear:
                result = "linear"
            case .easeIn:
                result = "easein"
            case .easeOut:
                result = "easeout"
            case .easeInEaseOut:
                result = "easeineaseout"
        }
        
        return result
    }
}
