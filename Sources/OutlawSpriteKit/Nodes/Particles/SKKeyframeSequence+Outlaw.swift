//
//  SKKeyframeSequence+Outlaw.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/16/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit
import Outlaw


public extension SKKeyframeSequence {
    struct ExtractableKeys {
        public static let interpolationMode = "interpolationMode"
        public static let repeatMode = "repeatMode"
    }
    private typealias keys = SKKeyframeSequence.ExtractableKeys
}

extension SKKeyframeSequence: Serializable {
    public func serialized() -> [String: Any] {
        var result = [String: Any]()
        result[keys.interpolationMode] = self.interpolationMode.stringValue
        result[keys.repeatMode] = self.repeatMode.stringValue
        
        return result
    }
}

extension SKKeyframeSequence: Updatable {
    public func update(with object: Extractable) throws {
        if let stringValue: String = object.optional(for: keys.interpolationMode), let interpolationMode = SKInterpolationMode(stringValue: stringValue) {
            self.interpolationMode = interpolationMode
        }
        if let stringValue: String = object.optional(for: keys.repeatMode), let repeatMode = SKRepeatMode(stringValue: stringValue) {
            self.repeatMode = repeatMode
        }
    }
}
