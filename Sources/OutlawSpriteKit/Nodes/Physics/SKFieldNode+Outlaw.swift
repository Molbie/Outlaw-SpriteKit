//
//  SKFieldNode+Outlaw.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/16/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit
import Outlaw
import OutlawCoreGraphics
import OutlawSimd
import OutlawAppKit
import OutlawUIKit


// NOTE: Swift doesn't allow methods to be overriden
//       within extensions, so we are defining
//       explicit methods for each SKNode subclass

@available(OSX 10.10, *)
public extension SKFieldNode {
    struct FieldNodeExtractableKeys {
        public static let region = "region"
        public static let strength = "strength"
        public static let falloff = "falloff"
        public static let minimumRadius = "minimumRadius"
        public static let isEnabled = "isEnabled"
        public static let isExclusive = "isExclusive"
        public static let categoryBitMask = "categoryBitMask"
        public static let direction = "direction"
        public static let smoothness = "smoothness"
        public static let animationSpeed = "animationSpeed"
        public static let texture = "texture"
    }
    private typealias keys = SKFieldNode.FieldNodeExtractableKeys
}

@available(OSX 10.10, *)
public extension SKFieldNode { /* Serializable */
    func serializedFieldNode(withChildren: Bool) -> [String: Any] {
        var result = self.serializedNode(withChildren: withChildren)
// TODO: implement region extraction
//        if let region = self.region {
//            result[keys.region] = region.serialized()
//        }
        result[keys.strength] = self.strength
        result[keys.falloff] = self.falloff
        result[keys.minimumRadius] = self.minimumRadius
        result[keys.self.isEnabled] = self.isEnabled
        result[keys.self.isExclusive] = self.isExclusive
        result[keys.categoryBitMask] = self.categoryBitMask
        result[keys.direction] = self.direction.serialized()
        result[keys.smoothness] = self.smoothness
        result[keys.animationSpeed] = self.animationSpeed
// TODO: implement texture extraction
//        if let texture = self.texture {
//            result[keys.texture] = texture.serialized()
//        }
        
        return result
    }
}

@available(OSX 10.10, *)
public extension SKFieldNode { /* Updatable */
    func updateFieldNode(with object: Extractable) throws {
        try self.updateNode(with: object)
// TODO: update region
//        if let region: SKRegion = object.value(for: keys.region) {
//            self.region = region
//        }
        if let strength: Float = object.optional(for: keys.strength) {
            self.strength = strength
        }
        if let falloff: Float = object.optional(for: keys.falloff) {
            self.falloff = falloff
        }
        if let minimumRadius: Float = object.optional(for: keys.minimumRadius) {
            self.minimumRadius = minimumRadius
        }
        if let isEnabled: Bool = object.optional(for: keys.isEnabled) {
            self.isEnabled = isEnabled
        }
        if let isExclusive: Bool = object.optional(for: keys.isExclusive) {
            self.isExclusive = isExclusive
        }
        if let categoryBitMask: UInt32 = object.optional(for: keys.categoryBitMask) {
            self.categoryBitMask = categoryBitMask
        }
        if let direction: vector_float3 = object.optional(for: keys.direction) {
            self.direction = direction
        }
        if let smoothness: Float = object.optional(for: keys.smoothness) {
            self.smoothness = smoothness
        }
        if let animationSpeed: Float = object.optional(for: keys.animationSpeed) {
            self.animationSpeed = animationSpeed
        }
// TODO: update texture
//        if let texture: [String: Any] = object.value(for: keys.texture) {
//            // TODO: create a new one if it doesn't exist
//            self.texture?.update( object: texture )
//        }
    }
}
