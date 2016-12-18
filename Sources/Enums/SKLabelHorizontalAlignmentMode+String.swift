//
//  SKLabelHorizontalAlignmentMode+String.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/16/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit


public extension SKLabelHorizontalAlignmentMode {
    public init?(stringValue: String) {
        switch stringValue.lowercased() {
            case "center":
                self = .center
            case "left":
                self = .left
            case "right":
                self = .right
            default:
                return nil
        }
    }
    
    public var stringValue: String {
        let result: String
        
        switch self {
            case .center:
                result = "center"
            case .left:
                result = "left"
            case .right:
                result = "right"
        }
        
        return result
    }
}
