//
//  SKInterpolationMode+String.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/16/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit


public extension SKInterpolationMode {
    public struct StringValues {
        public static let linear = "linear"
        public static let spline = "spline"
        public static let step = "step"
    }
}

public extension SKInterpolationMode {
    public init?(stringValue: String) {
        typealias strings = SKInterpolationMode.StringValues
        
        switch stringValue.lowercased() {
            case strings.linear:
                self = .linear
            case strings.spline:
                self = .spline
            case strings.step:
                self = .step
            default:
                return nil
        }
    }
    
    public var stringValue: String {
        typealias strings = SKInterpolationMode.StringValues
        
        let result: String
        switch self {
            case .linear:
                result = strings.linear
            case .spline:
                result = strings.spline
            case .step:
                result = strings.step
        }
        
        return result
    }
}
