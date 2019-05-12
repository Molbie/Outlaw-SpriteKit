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
    struct StringValues {
        public static let grid = "grid"
        public static let isometric = "isometric"
        public static let hexagonalFlat = "hexagonalflat"
        public static let hexagonalPointy = "hexagonalpointy"
    }
    private typealias strings = SKTileSetType.StringValues
}

@available(iOS 10.0, tvOS 10.0, OSX 10.12, watchOS 3.0, *)
public extension SKTileSetType {
    init?(stringValue: String) {
        switch stringValue.lowercased() {
            case strings.grid:
                self = .grid
            case strings.isometric:
                self = .isometric
            case strings.hexagonalFlat:
                self = .hexagonalFlat
            case strings.hexagonalPointy:
                self = .hexagonalPointy
            default:
                return nil
        }
    }
    
    var stringValue: String {
        let result: String
        switch self {
            case .grid:
                result = strings.grid
            case .isometric:
                result = strings.isometric
            case .hexagonalFlat:
                result = strings.hexagonalFlat
            case .hexagonalPointy:
                result = strings.hexagonalPointy
            @unknown default:
                fatalError()
        }
        
        return result
    }
}
