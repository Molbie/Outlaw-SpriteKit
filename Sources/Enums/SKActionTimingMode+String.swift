//
//  SKActionTimingMode+String.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/17/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit


public extension SKActionTimingMode {
    public struct StringValues {
        public static let linear = "linear"
        public static let easeIn = "easein"
        public static let easeOut = "easeout"
        public static let easeInEaseOut = "easeineaseout"
    }
    fileprivate typealias strings = SKActionTimingMode.StringValues
}

public extension SKActionTimingMode {
    public init?(stringValue: String) {
        switch stringValue.lowercased() {
            case strings.linear:
                self = .linear
            case strings.easeIn:
                self = .easeIn
            case strings.easeOut:
                self = .easeOut
            case strings.easeInEaseOut:
                self = .easeInEaseOut
            default:
                return nil
        }
    }
    
    public var stringValue: String {
        let result: String
        switch self {
            case .linear:
                result = strings.linear
            case .easeIn:
                result = strings.easeIn
            case .easeOut:
                result = strings.easeOut
            case .easeInEaseOut:
                result = strings.easeInEaseOut
        }
        
        return result
    }
}
