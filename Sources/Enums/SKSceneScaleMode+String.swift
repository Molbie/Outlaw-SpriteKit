//
//  SKSceneScaleMode+String.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/16/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit


public extension SKSceneScaleMode {
    public struct StringValues {
        public static let fill = "fill"
        public static let aspectFill = "aspectfill"
        public static let aspectFit = "aspectfit"
        public static let resizeFill = "resizefill"
    }
}

public extension SKSceneScaleMode {
    public init?(stringValue: String) {
        typealias strings = SKSceneScaleMode.StringValues
        
        switch stringValue.lowercased() {
            case strings.fill:
                self = .fill
            case strings.aspectFill:
                self = .aspectFill
            case strings.aspectFit:
                self = .aspectFit
            case strings.resizeFill:
                self = .resizeFill
            default:
                return nil
        }
    }
    
    public var stringValue: String {
        typealias strings = SKSceneScaleMode.StringValues
        
        let result: String
        switch self {
            case .fill:
                result = strings.fill
            case .aspectFill:
                result = strings.aspectFill
            case .aspectFit:
                result = strings.aspectFit
            case .resizeFill:
                result = strings.resizeFill
        }
        
        return result
    }
}
