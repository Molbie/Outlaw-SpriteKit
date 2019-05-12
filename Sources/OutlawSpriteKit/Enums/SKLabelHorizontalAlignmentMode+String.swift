//
//  SKLabelHorizontalAlignmentMode+String.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/16/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit


public extension SKLabelHorizontalAlignmentMode {
    struct StringValues {
        public static let center = "center"
        public static let left = "left"
        public static let right = "right"
    }
    private typealias strings = SKLabelHorizontalAlignmentMode.StringValues
}

public extension SKLabelHorizontalAlignmentMode {
    init?(stringValue: String) {
        switch stringValue.lowercased() {
            case strings.center:
                self = .center
            case strings.left:
                self = .left
            case strings.right:
                self = .right
            default:
                return nil
        }
    }
    
    var stringValue: String {
        let result: String
        switch self {
            case .center:
                result = strings.center
            case .left:
                result = strings.left
            case .right:
                result = strings.right
            @unknown default:
                fatalError()
        }
        
        return result
    }
}
