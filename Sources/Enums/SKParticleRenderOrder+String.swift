//
//  SKParticleRenderOrder+String.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/16/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit


@available(iOS 9.0, OSX 10.11, *)
public extension SKParticleRenderOrder {
    public struct StringValues {
        public static let oldestLast = "oldestlast"
        public static let oldestFirst = "oldestfirst"
        public static let dontCare = "dontcare"
    }
    fileprivate typealias strings = SKParticleRenderOrder.StringValues
}

@available(iOS 9.0, OSX 10.11, *)
public extension SKParticleRenderOrder {
    public init?(stringValue: String) {
        switch stringValue.lowercased() {
            case strings.oldestLast:
                self = .oldestLast
            case strings.oldestFirst:
                self = .oldestFirst
            case strings.dontCare:
                self = .dontCare
            default:
                return nil
        }
    }
    
    public var stringValue: String {
        let result: String
        switch self {
            case .oldestLast:
                result = strings.oldestLast
            case .oldestFirst:
                result = strings.oldestFirst
            case .dontCare:
                result = strings.dontCare
        }
        
        return result
    }
}
