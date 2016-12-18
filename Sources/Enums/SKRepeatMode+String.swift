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
}

public extension SKRepeatMode {
    public init?(stringValue: String) {
        typealias strings = SKRepeatMode.StringValues
        
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
        typealias strings = SKRepeatMode.StringValues
        
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
