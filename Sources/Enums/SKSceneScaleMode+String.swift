//
//  SKSceneScaleMode+String.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/16/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit


public extension SKSceneScaleMode {
    public init?(stringValue: String) {
        switch stringValue.lowercased() {
            case "fill":
                self = .fill
            case "aspectfill":
                self = .aspectFill
            case "aspectfit":
                self = .aspectFit
            case "resizefill":
                self = .resizeFill
            default:
                return nil
        }
    }
    
    public var stringValue: String {
        let result: String
        
        switch self {
            case .fill:
                result = "fill"
            case .aspectFill:
                result = "aspectfill"
            case .aspectFit:
                result = "aspectfit"
            case .resizeFill:
                result = "resizefill"
        }
        
        return result
    }
}
