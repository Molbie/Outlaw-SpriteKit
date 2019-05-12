//
//  SKLightNode+Outlaw.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/16/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit
import Outlaw
import OutlawCoreGraphics
import OutlawAppKit
import OutlawUIKit


// NOTE: Swift doesn't allow methods to be overriden
//       within extensions, so we are defining
//       explicit methods for each SKNode subclass

@available(OSX 10.10, *)
public extension SKLightNode {
    struct ExtractableKeys {
        public static let isEnabled = "isEnabled"
        public static let lightColor = "lightColor"
        public static let ambientColor = "ambientColor"
        public static let shadowColor = "shadowColor"
        public static let falloff = "falloff"
        public static let categoryBitMask = "categoryBitMask"
    }
    private typealias keys = SKLightNode.ExtractableKeys
}

@available(OSX 10.10, *)
public extension SKLightNode { /* Serializable */
    func serializedLightNode(withChildren: Bool) -> [String: Any] {
        var result = self.serializedNode(withChildren: withChildren)
        result[keys.isEnabled] = self.isEnabled
        result[keys.lightColor] = self.lightColor.serialized()
        result[keys.ambientColor] = self.ambientColor.serialized()
        result[keys.shadowColor] = self.shadowColor.serialized()
        result[keys.falloff] = self.falloff
        result[keys.categoryBitMask] = self.categoryBitMask
        
        return result
    }
}

@available(OSX 10.10, *)
public extension SKLightNode { /* Updatable */
    func updateLightNode(with object: Extractable) throws {
        try self.updateNode(with: object)
        if let isEnabled: Bool = object.optional(for: keys.isEnabled) {
            self.isEnabled = isEnabled
        }
        if let lightColor: SKColor = object.optional(for: keys.lightColor) {
            self.lightColor = lightColor
        }
        if let ambientColor: SKColor = object.optional(for: keys.ambientColor) {
            self.ambientColor = ambientColor
        }
        if let shadowColor: SKColor = object.optional(for: keys.shadowColor) {
            self.shadowColor = shadowColor
        }
        if let falloff: CGFloat = object.optional(for: keys.falloff) {
            self.falloff = falloff
        }
        if let categoryBitMask: UInt32 = object.optional(for: keys.categoryBitMask) {
            self.categoryBitMask = categoryBitMask
        }
    }
}
