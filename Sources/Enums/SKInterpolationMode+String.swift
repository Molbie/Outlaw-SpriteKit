//
//  SKInterpolationMode+String.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/16/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit


public extension SKInterpolationMode {
    public init?(stringValue: String) {
        switch stringValue.lowercased() {
            case "linear":
                self = .linear
            case "spline":
                self = .spline
            case "step":
                self = .step
            default:
                return nil
        }
    }
    
    public var stringValue: String {
        let result: String
        
        switch self {
            case .linear:
                result = "linear"
            case .spline:
                result = "spline"
            case .step:
                result = "step"
        }
        
        return result
    }
}
