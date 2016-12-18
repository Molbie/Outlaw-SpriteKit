//
//  SKLabelVerticalAlignmentMode+String.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/16/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit


public extension SKLabelVerticalAlignmentMode {
    public init?(stringValue: String) {
        switch stringValue.lowercased() {
            case "baseline":
                self = .baseline
            case "center":
                self = .center
            case "top":
                self = .top
            case "bottom":
                self = .bottom
            default:
                return nil
        }
    }
    
    public var stringValue: String {
        let result: String
        
        switch self {
            case .baseline:
                result = "baseline"
            case .center:
                result = "center"
            case .top:
                result = "top"
            case .bottom:
                result = "bottom"
        }
        
        return result
    }
}
