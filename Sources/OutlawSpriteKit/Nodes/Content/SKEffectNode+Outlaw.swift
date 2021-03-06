//
//  SKEffectNode+Outlaw.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/16/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit
import Outlaw


// NOTE: Swift doesn't allow methods to be overriden
//       within extensions, so we are defining
//       explicit methods for each SKNode subclass

public extension SKEffectNode {
    struct EffectNodeExtractableKeys {
        public static let filter = "filter"
        public static let shouldCenterFilter = "shouldCenterFilter"
        public static let shouldEnableEffects = "shouldEnableEffects"
        public static let shouldRasterize = "shouldRasterize"
        public static let blendMode = "blendMode"
        public static let shader = "shader"
        public static let attributeValues = "attributeValues"
        public static let warpGeometry = "warpGeometry"
        public static let subdivisionLevels = "subdivisionLevels"
    }
    private typealias keys = SKEffectNode.EffectNodeExtractableKeys
}

public extension SKEffectNode { /* Serializable */
    func serializedEffectNode(withChildren: Bool) -> [String: Any] {
        var result = self.serializedNode(withChildren: withChildren)
// TODO: implement filter extraction
//        if let filter = self.filter {
//            result[keys.filter] = filter.serialized()
//        }
        result[keys.shouldCenterFilter] = self.shouldCenterFilter
        result[keys.shouldEnableEffects] = self.shouldEnableEffects
        result[keys.shouldRasterize] = self.shouldRasterize
        result[keys.blendMode] = self.blendMode.stringValue
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

public extension SKEffectNode { /* Updatable */
    func updateEffectNode(with object: Extractable) throws {
        try self.updateNode(with: object)
// TODO: update filter
//        if let filter: CIFilter = object.value(for: keys.filter) {
//            self.filter = filter
//        }
        if let shouldCenterFilter: Bool = object.optional(for: keys.shouldCenterFilter) {
            self.shouldCenterFilter = shouldCenterFilter
        }
        if let shouldEnableEffects: Bool = object.optional(for: keys.shouldEnableEffects)  {
            self.shouldEnableEffects = shouldEnableEffects
        }
        if let shouldRasterize: Bool = object.optional(for: keys.shouldRasterize) {
            self.shouldRasterize = shouldRasterize
        }
        if let blendModeString: String = object.optional(for: keys.blendMode), let blendMode = SKBlendMode(stringValue: blendModeString) {
            self.blendMode = blendMode
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
