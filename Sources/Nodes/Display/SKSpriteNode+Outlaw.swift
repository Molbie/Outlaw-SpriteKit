//
//  SKSpriteNode+Outlaw.swift
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

public extension SKSpriteNode {
    public struct SpriteNodeExtractableKeys {
        public static let texture = "texture"
        public static let normalTexture = "normalTexture"
        public static let lightingBitMask = "lightingBitMask"
        public static let shadowCastBitMask = "shadowCastBitMask"
        public static let shadowedBitMask = "shadowedBitMask"
        public static let centerRect = "centerRect"
        public static let colorBlendFactor = "colorBlendFactor"
        public static let color = "color"
        public static let blendMode = "blendMode"
        public static let anchorPoint = "anchorPoint"
        public static let size = "size"
        public static let shader = "shader"
        public static let attributeValues = "attributeValues"
        public static let warpGeometry = "warpGeometry"
        public static let subdivisionLevels = "subdivisionLevels"
    }
}

public extension SKSpriteNode { /* Serializable */
    public func serializedSpriteNode(withChildren: Bool) -> [String: Any] {
        typealias keys = SKSpriteNode.SpriteNodeExtractableKeys
        
        var result = self.serializedNode(withChildren: withChildren)
// TODO: implement texture extraction
//        if let texture = self.texture {
//            result[keys.texture] = texture.serialized()
//        }
// TODO: implement texture extraction
//        if let normalTexture = self.normalTexture {
//            result[keys.normalTexture] = normalTexture.serialized()
//        }
        if #available(OSX 10.10, *) {
            result[keys.lightingBitMask] = self.lightingBitMask
            result[keys.shadowCastBitMask] = self.shadowCastBitMask
            result[keys.shadowedBitMask] = self.shadowedBitMask
        }
        result[keys.centerRect] = self.centerRect.serialized() as [String: CGFloat]
        result[keys.colorBlendFactor] = self.colorBlendFactor
        result[keys.color] = self.color.serialized()
        result[keys.blendMode] = self.blendMode.stringValue
        result[keys.anchorPoint] = self.anchorPoint.serialized() as [String: CGFloat]
        result[keys.size] = self.size.serialized() as [String: CGFloat]
// TODO: implement shader extraction
//        if let shader = self.shader {
//            result[keys.shader] = shader.serialized()
//        }
// TODO: implement shader attribute extraction
//        var attributeData = [String: [String: Any]]()
//        for (attribute, attributeValue) in self.attributeValues {
//            attributeData[attribute] = attributeValue.serialized()
//        }
//        result[keys.attributeValues] = attributeData
// TODO: implement warpGeometry extraction
//        if let warpGeometry = self.warpGeometry {
//            result[keys.warpGeometry] = warpGeometry.serialized()
//        }
// TODO: implement warp subdivisionLevels extraction
//        result[keys.subdivisionLevels] = self.subdivisionLevels
        
        return result
    }
}

public extension SKSpriteNode { /* Updatable */
    public func updateSpriteNode(with object: Extractable) throws {
        typealias keys = SKSpriteNode.SpriteNodeExtractableKeys
        
        try self.updateNode(with: object)
// TODO: update texture
//        if let texture: [String: Any] = object.value(for: keys.texture) {
//            
//        }
// TODO: update texture
//        if let normalTexture: [String: Any] = object.value(for: keys.normalTexture) {
//            
//        }
        if #available(OSX 10.10, *) {
            if let lightingBitMask: UInt32 = object.value(for: keys.lightingBitMask) {
                self.lightingBitMask = lightingBitMask
            }
            if let shadowCastBitMask: UInt32 = object.value(for: keys.shadowCastBitMask) {
                self.shadowCastBitMask = shadowCastBitMask
            }
            if let shadowedBitMask: UInt32 = object.value(for: keys.shadowedBitMask) {
                self.shadowedBitMask = shadowedBitMask
            }
        }
        if let centerRect: CGRect = object.value(for: keys.centerRect) {
            self.centerRect = centerRect
        }
        if let colorBlendFactor: CGFloat = object.value(for: keys.colorBlendFactor) {
            self.colorBlendFactor = colorBlendFactor
        }
        if let color: SKColor = object.value(for: keys.color) {
            self.color = color
        }
        if let blendModeString: String = object.value(for: keys.blendMode), let blendMode = SKBlendMode(stringValue: blendModeString) {
            self.blendMode = blendMode
        }
        if let anchorPoint: CGPoint = object.value(for: keys.anchorPoint) {
            self.anchorPoint = anchorPoint
        }
        if let size: CGSize = object.value(for: keys.size) {
            self.size = size
        }
// TODO: update shader
//        if let shader: SKShader = object.value(for: keys.shader) {
//            self.shader = shader
//        }
// TODO: update shader attributes
//        if let attributes: [String: SKAttributeValue] = object.value(for: keys.attributeValues) {
//            for (attribute, attributeValue) in attributes {
//                self.attributeValues[attribute] = attributeValue
//            }
//        }
// TODO: update warpGeometry
//        if let warpGeometry: SKWarpGeometry = object.value(for: keys.warpGeometry) {
//            self.warpGeometry = warpGeometry
//        }
// TODO: update warp subdivisionLevels
//        if let subdivisionLevels: Int = object.value(for: keys.subdivisionLevels) {
//            self.subdivisionLevels = subdivisionLevels
//        }
    }
}
