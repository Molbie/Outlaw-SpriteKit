//
//  SKRepeatMode+String.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/16/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit


public extension SKRepeatMode {
    public struct StringValues {
        public static let clamp = "clamp"
        public static let loop = "loop"
    }
    fileprivate typealias strings = SKRepeatMode.StringValues
}

public extension SKRepeatMode {
    public init?(stringValue: String) {
        switch stringValue.lowercased() {
            case strings.clamp:
                self = .clamp
            case strings.loop:
                self = .loop
            default:
                return nil
        }
    }
    
    public var stringValue: String {
        let result: String
        switch self {
            case .clamp:
                result = strings.clamp
            case .loop:
                result = strings.loop
        }
        
        return result
    }
}
