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
    public init?(stringValue: String) {
        switch stringValue.lowercased() {
            case "oldestlast":
                self = .oldestLast
            case "oldestfirst":
                self = .oldestFirst
            case "dontcare":
                self = .dontCare
            default:
                return nil
        }
    }
    
    public var stringValue: String {
        let result: String
        
        switch self {
            case .oldestLast:
                result = "oldestlast"
            case .oldestFirst:
                result = "oldestfirst"
            case .dontCare:
                result = "dontcare"
        }
        
        return result
    }
}
