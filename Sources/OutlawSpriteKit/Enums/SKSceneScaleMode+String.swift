//
//  SKSceneScaleMode+String.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/16/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit


public extension SKSceneScaleMode {
    struct StringValues {
        public static let fill = "fill"
        public static let aspectFill = "aspectfill"
        public static let aspectFit = "aspectfit"
        public static let resizeFill = "resizefill"
    }
    private typealias strings = SKSceneScaleMode.StringValues
}

public extension SKSceneScaleMode {
    init?(stringValue: String) {
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
    
    var stringValue: String {
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
            @unknown default:
                fatalError()
        }
        
        return result
    }
}
