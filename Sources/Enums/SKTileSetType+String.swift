//
//  SKTileSetType+String.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/17/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit


@available(iOS 10.0, tvOS 10.0, OSX 10.12, watchOS 3.0, *)
public extension SKTileSetType {
    public init?(stringValue: String) {
        switch stringValue.lowercased() {
            case "grid":
                self = .grid
            case "isometric":
                self = .isometric
            case "hexagonalflat":
                self = .hexagonalFlat
            case "hexagonalpointy":
                self = .hexagonalPointy
            default:
                return nil
        }
    }
    
    public var stringValue: String {
        let result: String
        
        switch self {
            case .grid:
                result = "grid"
            case .isometric:
                result = "isometric"
            case .hexagonalFlat:
                result = "hexagonalflat"
            case .hexagonalPointy:
                result = "hexagonalpointy"
        }
        
        return result
    }
}
