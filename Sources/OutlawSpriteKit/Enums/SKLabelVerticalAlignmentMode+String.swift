//
//  SKLabelVerticalAlignmentMode+String.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/16/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit


public extension SKLabelVerticalAlignmentMode {
    struct StringValues {
        public static let baseline = "baseline"
        public static let center = "center"
        public static let top = "top"
        public static let bottom = "bottom"
    }
    private typealias strings = SKLabelVerticalAlignmentMode.StringValues
}

public extension SKLabelVerticalAlignmentMode {
    init?(stringValue: String) {
        switch stringValue.lowercased() {
            case strings.baseline:
                self = .baseline
            case strings.center:
                self = .center
            case strings.top:
                self = .top
            case strings.bottom:
                self = .bottom
            default:
                return nil
        }
    }
    
    var stringValue: String {
        let result: String
        switch self {
            case .baseline:
                result = strings.baseline
            case .center:
                result = strings.center
            case .top:
                result = strings.top
            case .bottom:
                result = strings.bottom
            @unknown default:
                fatalError()
        }
        
        return result
    }
}
