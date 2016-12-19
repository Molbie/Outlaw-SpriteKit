//
//  SKShapeNode+Outlaw.swift
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

public extension SKShapeNode {
    public struct ShapeNodeExtractableKeys {
        public static let path = "path"
        public static let strokeColor = "strokeColor"
        public static let fillColor = "fillColor"
        public static let blendMode = "blendMode"
        public static let isAntialiased = "isAntialiased"
        public static let lineWidth = "lineWidth"
        public static let glowWidth = "glowWidth"
        public static let lineCap = "lineCap"
        public static let lineJoin = "lineJoin"
        public static let miterLimit = "miterLimit"
        public static let fillTexture = "fillTexture"
        public static let fillShader = "fillShader"
        public static let strokeTexture = "strokeTexture"
        public static let strokeShader = "strokeShader"
        public static let attributeValues = "attributeValues"
    }
}


public extension SKShapeNode { /* Serializable */
    public func serializedShapeNode(withChildren: Bool) -> [String: Any] {
        typealias keys = SKShapeNode.ShapeNodeExtractableKeys
        
        var result = self.serializedNode(withChildren: withChildren)
// TODO: implement path extraction
//        if let path = self.path {
//            result[keys.path] = path.serialized()
//        }
        result[keys.strokeColor] = self.strokeColor.serialized()
        result[keys.fillColor] = self.fillColor.serialized()
        result[keys.blendMode] = self.blendMode.stringValue
        result[keys.isAntialiased] = self.isAntialiased
        result[keys.lineWidth] = self.lineWidth
        result[keys.glowWidth] = self.glowWidth
        result[keys.lineCap] = self.lineCap.stringValue
        result[keys.lineJoin] = self.lineJoin.stringValue
        result[keys.miterLimit] = self.miterLimit
// TODO: implement texture extraction
//        if let fillTexture = self.fillTexture {
//            result[keys.fillTexture] = fillTexture.serialized()
//        }
// TODO: implement shader extraction
//        if let fillShader = self.fillShader {
//            result[keys.fillShader] = fillShader.serialized()
//        }
// TODO: implement texture extraction
//        if let strokeTexture = self.strokeTexture {
//            result[keys.strokeTexture] = strokeTexture.serialized()
//        }
// TODO: implement shader extraction
//        if let strokeShader = self.strokeShader {
//            result[keys.strokeShader] = strokeShader.serialized()
//        }
// TODO: implement shader attribute extraction
//        var attributeData = [String: [String: Any]]()
//        for (attribute, attributeValue) in self.attributeValues {
//            attributeData[attribute] = attributeValue.serialized()
//        }
//        result[keys.attributeValues] = attributeData
        
        return result
    }
}

public extension SKShapeNode { /* Updatable */
    public func updateShapeNode(with object: Extractable) throws {
        typealias keys = SKShapeNode.ShapeNodeExtractableKeys
        
        try self.updateNode(with: object)
// TODO: update path
//        if let path: CGPath = object.value(for: keys.path) {
//            self.path = path
//        }
        if let strokeColor: SKColor = object.value(for: keys.strokeColor) {
            self.strokeColor = strokeColor
        }
        if let fillColor: SKColor = object.value(for: keys.fillColor) {
            self.fillColor = fillColor
        }
        if let stringValue: String = object.value(for: keys.blendMode), let blendMode = SKBlendMode(stringValue: stringValue) {
            self.blendMode = blendMode
        }
        if let isAntialiased: Bool = object.value(for: keys.isAntialiased) {
            self.isAntialiased = isAntialiased
        }
        if let lineWidth: CGFloat = object.value(for: keys.lineWidth) {
            self.lineWidth = lineWidth
        }
        if let glowWidth: CGFloat = object.value(for: keys.glowWidth) {
            self.glowWidth = glowWidth
        }
        if let stringValue: String = object.value(for: keys.lineCap), let lineCap = CGLineCap(stringValue: stringValue) {
            self.lineCap = lineCap
        }
        if let stringValue: String = object.value(for: keys.lineJoin), let lineJoin = CGLineJoin(stringValue: stringValue) {
            self.lineJoin = lineJoin
        }
        if let miterLimit: CGFloat = object.value(for: keys.miterLimit) {
            self.miterLimit = miterLimit
        }
// TODO: update fillTexture
//        if let fillTexture: SKTexture = object.value(for: keys.fillTexture) {
//            self.fillTexture = fillTexture
//        }
// TODO: update fillShader
//        if let fillShader: SKShader = object.value(for: keys.fillShader) {
//            self.fillShader = fillShader
//        }
// TODO: update strokeTexture
//        if let strokeTexture: SKTexture = object.value(for: keys.strokeTexture) {
//            self.strokeTexture = strokeTexture
//        }
// TODO: update strokeShader
//        if let strokeShader: SKShader = object.value(for: keys.strokeShader) {
//            self.strokeShader = strokeShader
//        }
// TODO: update shader attributes
//        if let attributes: [String: SKAttributeValue] = object.value(for: keys.attributeValues) {
//            for (attribute, attributeValue) in attributes {
//                self.attributeValues[attribute] = attributeValue
//            }
//        }
    }
}
