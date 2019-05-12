//
//  SKBlendMode+String.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/16/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit


public extension SKBlendMode {
    struct StringValues {
        public static let alpha = "alpha"
        public static let add = "add"
        public static let subtract = "subtract"
        public static let multiply = "multiply"
        public static let multiplyX2 = "multiplyx2"
        public static let screen = "screen"
        public static let replace = "replace"
        public static let multiplyAlpha = "multiplyalpha"
    }
    private typealias strings = SKBlendMode.StringValues
}

public extension SKBlendMode {
    init?(stringValue: String) {
        switch stringValue.lowercased() {
            case strings.alpha:
                self = .alpha
            case strings.add:
                self = .add
            case strings.subtract:
                self = .subtract
            case strings.multiply:
                self = .multiply
            case strings.multiplyX2:
                self = .multiplyX2
            case strings.screen:
                self = .screen
            case strings.replace:
                self = .replace
            case strings.multiplyAlpha:
                self = .multiplyAlpha
            default:
                return nil
        }
    }
    
    var stringValue: String {
        let result: String
        switch self {
            case .alpha:
                result = strings.alpha
            case .add:
                result = strings.add
            case .subtract:
                result = strings.subtract
            case .multiply:
                result = strings.multiply
            case .multiplyX2:
                result = strings.multiplyX2
            case .screen:
                result = strings.screen
            case .replace:
                result = strings.replace
            case .multiplyAlpha:
                result = strings.multiplyAlpha
            @unknown default:
                fatalError()
        }
        
        return result
    }
}
