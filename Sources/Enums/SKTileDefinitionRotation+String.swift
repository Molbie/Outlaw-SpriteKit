//
//  SKTileDefinitionRotation+String.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/17/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit


@available(iOS 10.0, tvOS 10.0, OSX 10.12, watchOS 3.0, *)
public extension SKTileDefinitionRotation {
    public struct StringValues {
        public static let rotation0 = "rotation0"
        public static let rotation90 = "rotation90"
        public static let rotation180 = "rotation180"
        public static let rotation270 = "rotation270"
    }
    fileprivate typealias strings = SKTileDefinitionRotation.StringValues
}

@available(iOS 10.0, tvOS 10.0, OSX 10.12, watchOS 3.0, *)
public extension SKTileDefinitionRotation {
    public init?(stringValue: String) {
        switch stringValue.lowercased() {
            case strings.rotation0:
                self = .rotation0
            case strings.rotation90:
                self = .rotation90
            case strings.rotation180:
                self = .rotation180
            case strings.rotation270:
                self = .rotation270
            default:
                return nil
        }
    }
    
    public var stringValue: String {
        let result: String
        switch self {
            case .rotation0:
                result = strings.rotation0
            case .rotation90:
                result = strings.rotation90
            case .rotation180:
                result = strings.rotation180
            case .rotation270:
                result = strings.rotation270
        }
        
        return result
    }
}
