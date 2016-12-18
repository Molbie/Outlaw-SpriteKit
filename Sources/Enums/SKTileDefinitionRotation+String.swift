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
    public init?(stringValue: String) {
        switch stringValue.lowercased() {
            case "rotation0":
                self = .rotation0
            case "rotation90":
                self = .rotation90
            case "rotation180":
                self = .rotation180
            case "rotation270":
                self = .rotation270
            default:
                return nil
        }
    }
    
    public var stringValue: String {
        let result: String
        
        switch self {
            case .rotation0:
                result = "rotation0"
            case .rotation90:
                result = "rotation90"
            case .rotation180:
                result = "rotation180"
            case .rotation270:
                result = "rotation270"
        }
        
        return result
    }
}
