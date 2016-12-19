//
//  SKEmitterNode+Outlaw.swift
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

public extension SKEmitterNode {
    public struct EmitterNodeExtractableKeys {
        public static let particleTexture = "particleTexture"
        public static let particleBlendMode = "particleBlendMode"
        public static let particleColor = "particleColor"
        public static let particleColorRedRange = "particleColorRedRange"
        public static let particleColorGreenRange = "particleColorGreenRange"
        public static let particleColorBlueRange = "particleColorBlueRange"
        public static let particleColorAlphaRange = "particleColorAlphaRange"
        public static let particleColorRedSpeed = "particleColorRedSpeed"
        public static let particleColorGreenSpeed = "particleColorGreenSpeed"
        public static let particleColorBlueSpeed = "particleColorBlueSpeed"
        public static let particleColorAlphaSpeed = "particleColorAlphaSpeed"
        public static let particleColorSequence = "particleColorSequence"
        public static let particleColorBlendFactor = "particleColorBlendFactor"
        public static let particleColorBlendFactorRange = "particleColorBlendFactorRange"
        public static let particleColorBlendFactorSpeed = "particleColorBlendFactorSpeed"
        public static let particleColorBlendFactorSequence = "particleColorBlendFactorSequence"
        public static let particlePosition = "particlePosition"
        public static let particlePositionRange = "particlePositionRange"
        public static let particleSpeed = "particleSpeed"
        public static let particleSpeedRange = "particleSpeedRange"
        public static let emissionAngle = "emissionAngle"
        public static let emissionAngleRange = "emissionAngleRange"
        public static let xAcceleration = "xAcceleration"
        public static let yAcceleration = "yAcceleration"
        public static let particleBirthRate = "particleBirthRate"
        public static let numParticlesToEmit = "numParticlesToEmit"
        public static let particleLifetime = "particleLifetime"
        public static let particleLifetimeRange = "particleLifetimeRange"
        public static let particleRotation = "particleRotation"
        public static let particleRotationRange = "particleRotationRange"
        public static let particleRotationSpeed = "particleRotationSpeed"
        public static let particleSize = "particleSize"
        public static let particleScale = "particleScale"
        public static let particleScaleRange = "particleScaleRange"
        public static let particleScaleSpeed = "particleScaleSpeed"
        public static let particleScaleSequence = "particleScaleSequence"
        public static let particleAlpha = "particleAlpha"
        public static let particleAlphaRange = "particleAlphaRange"
        public static let particleAlphaSpeed = "particleAlphaSpeed"
        public static let particleAlphaSequence = "particleAlphaSequence"
        public static let particleAction = "particleAction"
        public static let fieldBitMask = "fieldBitMask"
        public static let targetNode = "targetNode"
        public static let shader = "shader"
        public static let attributeValues = "attributeValues"
        public static let particleZPosition = "particleZPosition"
        public static let particleRenderOrder = "particleRenderOrder"
        public static let particleZPositionRange = "particleZPositionRange"
        public static let particleZPositionSpeed = "particleZPositionSpeed"
    }
    fileprivate typealias keys = SKEmitterNode.EmitterNodeExtractableKeys
}

public extension SKEmitterNode { /* Serializable */
    public func serializedEmitterNode(withChildren: Bool) -> [String: Any] {
        var result = self.serializedNode(withChildren: withChildren)
// TODO: implement texture extraction
//        if let particleTexture = self.particleTexture {
//            result[keys.particleTexture] = particleTexture.serialized()
//        }
        result[keys.particleBlendMode] = self.particleBlendMode.stringValue
        result[keys.particleColor] = self.particleColor.serialized()
        result[keys.particleColorRedRange] = self.particleColorRedRange
        result[keys.particleColorGreenRange] = self.particleColorGreenRange
        result[keys.particleColorBlueRange] = self.particleColorBlueRange
        result[keys.particleColorAlphaRange] = self.particleColorAlphaRange
        result[keys.particleColorRedSpeed] = self.particleColorRedSpeed
        result[keys.particleColorGreenSpeed] = self.particleColorGreenSpeed
        result[keys.particleColorBlueSpeed] = self.particleColorBlueSpeed
        result[keys.particleColorAlphaSpeed] = self.particleColorAlphaSpeed
        if let particleColorSequence = self.particleColorSequence {
            result[keys.particleColorSequence] = particleColorSequence.serialized()
        }
        result[keys.particleColorBlendFactor] = self.particleColorBlendFactor
        result[keys.particleColorBlendFactorRange] = self.particleColorBlendFactorRange
        result[keys.particleColorBlendFactorSpeed] = self.particleColorBlendFactorSpeed
        if let particleColorBlendFactorSequence = self.particleColorBlendFactorSequence {
            result[keys.particleColorBlendFactorSequence] = particleColorBlendFactorSequence.serialized()
        }
        result[keys.particlePosition] = self.particlePosition.serialized()
        result[keys.particlePositionRange] = self.particlePositionRange.serialized()
        result[keys.particleSpeed] = self.particleSpeed
        result[keys.particleSpeedRange] = self.particleSpeedRange
        result[keys.emissionAngle] = self.emissionAngle
        result[keys.emissionAngleRange] = self.emissionAngleRange
        result[keys.xAcceleration] = self.xAcceleration
        result[keys.yAcceleration] = self.yAcceleration
        result[keys.particleBirthRate] = self.particleBirthRate
        result[keys.numParticlesToEmit] = self.numParticlesToEmit
        result[keys.particleLifetime] = self.particleLifetime
        result[keys.particleLifetimeRange] = self.particleLifetimeRange
        result[keys.particleRotation] = self.particleRotation
        result[keys.particleRotationRange] = self.particleRotationRange
        result[keys.particleRotationSpeed] = self.particleRotationSpeed
        result[keys.particleSize] = self.particleSize.serialized()
        result[keys.particleScale] = self.particleScale
        result[keys.particleScaleRange] = self.particleScaleRange
        result[keys.particleScaleSpeed] = self.particleScaleSpeed
        if let particleScaleSequence = self.particleScaleSequence {
            result[keys.particleScaleSequence] = particleScaleSequence.serialized()
        }
        result[keys.particleAlpha] = self.particleAlpha
        result[keys.particleAlphaRange] = self.particleAlphaRange
        result[keys.particleAlphaSpeed] = self.particleAlphaSpeed
        if let particleAlphaSequence = self.particleAlphaSequence {
            result[keys.particleAlphaSequence] = particleAlphaSequence.serialized()
        }
// TODO: implement action extraction
//        if let particleAction = self.particleAction {
//            result[keys.particleAction] = particleAction.serialized()
//        }
        result[keys.fieldBitMask] = self.fieldBitMask
// TODO: implement targetNode extraction
//        if let targetNode = self.targetNode {
//            result[keys.targetNode] = targetNode.serialized()
//        }
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
        result[keys.particleZPosition] = self.particleZPosition
        if #available(iOS 9.0, OSX 10.11, *) {
            result[keys.particleRenderOrder] = self.particleRenderOrder.stringValue
        }
        else {
            result[keys.particleZPositionRange] = self.particleZPositionRange
            result[keys.particleZPositionSpeed] = self.particleZPositionSpeed
        }
        
        return result
    }
}

public extension SKEmitterNode { /* Updatable */
    public func updateEmitterNode(with object: Extractable) throws {
        try self.updateNode(with: object)
// TODO: update particleTexture
//        if let particleTexture: SKTexture = object.value(for: keys.particleTexture) {
//
//        }
        if let stringValue: String = object.value(for: keys.particleBlendMode), let particleBlendMode = SKBlendMode(stringValue: stringValue) {
            self.particleBlendMode = particleBlendMode
        }
        if let particleColor: SKColor = object.value(for: keys.particleColor) {
            self.particleColor = particleColor
        }
        if let particleColorRedRange: CGFloat = object.value(for: keys.particleColorRedRange) {
            self.particleColorRedRange = particleColorRedRange
        }
        if let particleColorGreenRange: CGFloat = object.value(for: keys.particleColorGreenRange) {
            self.particleColorGreenRange = particleColorGreenRange
        }
        if let particleColorBlueRange: CGFloat = object.value(for: keys.particleColorBlueRange) {
            self.particleColorBlueRange = particleColorBlueRange
        }
        if let particleColorAlphaRange: CGFloat = object.value(for: keys.particleColorAlphaRange) {
            self.particleColorAlphaRange = particleColorAlphaRange
        }
        if let particleColorRedSpeed: CGFloat = object.value(for: keys.particleColorRedSpeed) {
            self.particleColorRedSpeed = particleColorRedSpeed
        }
        if let particleColorGreenSpeed: CGFloat = object.value(for: keys.particleColorGreenSpeed) {
            self.particleColorGreenSpeed = particleColorGreenSpeed
        }
        if let particleColorBlueSpeed: CGFloat = object.value(for: keys.particleColorBlueSpeed) {
            self.particleColorBlueSpeed = particleColorBlueSpeed
        }
        if let particleColorAlphaSpeed: CGFloat = object.value(for: keys.particleColorAlphaSpeed) {
            self.particleColorAlphaSpeed = particleColorAlphaSpeed
        }
        if let particleColorSequence: [String: Any] = object.value(for: keys.particleColorSequence) {
            // TODO: create one if it doesn't already exist
            try self.particleColorSequence?.update(with: particleColorSequence)
        }
        if let particleColorBlendFactor: CGFloat = object.value(for: keys.particleColorBlendFactor) {
            self.particleColorBlendFactor = particleColorBlendFactor
        }
        if let particleColorBlendFactorRange: CGFloat = object.value(for: keys.particleColorBlendFactorRange) {
            self.particleColorBlendFactorRange = particleColorBlendFactorRange
        }
        if let particleColorBlendFactorSpeed: CGFloat = object.value(for: keys.particleColorBlendFactorSpeed) {
            self.particleColorBlendFactorSpeed = particleColorBlendFactorSpeed
        }
        if let particleColorBlendFactorSequence: [String: Any] = object.value(for: keys.particleColorBlendFactorSequence) {
            // TODO: create one if it doesn't already exist
            try self.particleColorBlendFactorSequence?.update(with: particleColorBlendFactorSequence)
        }
        if let particlePosition: CGPoint = object.value(for: keys.particlePosition) {
            self.particlePosition = particlePosition
        }
        if let particlePositionRange: CGVector = object.value(for: keys.particlePositionRange) {
            self.particlePositionRange = particlePositionRange
        }
        if let particleSpeed: CGFloat = object.value(for: keys.particleSpeed) {
            self.particleSpeed = particleSpeed
        }
        if let particleSpeedRange: CGFloat = object.value(for: keys.particleSpeedRange) {
            self.particleSpeedRange = particleSpeedRange
        }
        if let emissionAngle: CGFloat = object.value(for: keys.emissionAngle) {
            self.emissionAngle = emissionAngle
        }
        if let emissionAngleRange: CGFloat = object.value(for: keys.emissionAngleRange) {
            self.emissionAngleRange = emissionAngleRange
        }
        if let xAcceleration: CGFloat = object.value(for: keys.xAcceleration) {
            self.xAcceleration = xAcceleration
        }
        if let yAcceleration: CGFloat = object.value(for: keys.yAcceleration) {
            self.yAcceleration = yAcceleration
        }
        if let particleBirthRate: CGFloat = object.value(for: keys.particleBirthRate) {
            self.particleBirthRate = particleBirthRate
        }
        if let numParticlesToEmit: Int = object.value(for: keys.numParticlesToEmit) {
            self.numParticlesToEmit = numParticlesToEmit
        }
        if let particleLifetime: CGFloat = object.value(for: keys.particleLifetime) {
            self.particleLifetime = particleLifetime
        }
        if let particleLifetimeRange: CGFloat = object.value(for: keys.particleLifetimeRange) {
            self.particleLifetimeRange = particleLifetimeRange
        }
        if let particleRotation: CGFloat = object.value(for: keys.particleRotation) {
            self.particleRotation = particleRotation
        }
        if let particleRotationRange: CGFloat = object.value(for: keys.particleRotationRange) {
            self.particleRotationRange = particleRotationRange
        }
        if let particleRotationSpeed: CGFloat = object.value(for: keys.particleRotationSpeed) {
            self.particleRotationSpeed = particleRotationSpeed
        }
        if let particleSize: CGSize = object.value(for: keys.particleSize) {
            self.particleSize = particleSize
        }
        if let particleScale: CGFloat = object.value(for: keys.particleScale) {
            self.particleScale = particleScale
        }
        if let particleScaleRange: CGFloat = object.value(for: keys.particleScaleRange) {
            self.particleScaleRange = particleScaleRange
        }
        if let particleScaleSpeed: CGFloat = object.value(for: keys.particleScaleSpeed) {
            self.particleScaleSpeed = particleScaleSpeed
        }
        if let particleScaleSequence: [String: Any] = object.value(for: keys.particleScaleSequence) {
            // TODO: create one if it doesn't already exist
            try self.particleScaleSequence?.update(with: particleScaleSequence)
        }
        if let particleAlpha: CGFloat = object.value(for: keys.particleAlpha) {
            self.particleAlpha = particleAlpha
        }
        if let particleAlphaRange: CGFloat = object.value(for: keys.particleAlphaRange) {
            self.particleAlphaRange = particleAlphaRange
        }
        if let particleAlphaSpeed: CGFloat = object.value(for: keys.particleAlphaSpeed) {
            self.particleAlphaSpeed = particleAlphaSpeed
        }
        if let particleAlphaSequence: [String: Any] = object.value(for: keys.particleAlphaSequence) {
            // TODO: create one if it doesn't already exist
            try self.particleAlphaSequence?.update(with: particleAlphaSequence)
        }
// TODO: update particleAction
//        if let particleAction: SKAction = object.value(for: keys.particleAction) {
//            self.particleAction = particleAction
//        }
        if let fieldBitMask: UInt32 = object.value(for: keys.fieldBitMask) {
            self.fieldBitMask = fieldBitMask
        }
// TODO: update targetNode
//        if let targetNode: [String: Any] = object.value(for: keys.targetNode) {
//            // TODO: create one if it doesn't already exist
//            try self.targetNode?.update(with: targetNode)
//        }
// TODO: update shader
//        if let shader = SKShader = object.value(for: keys.shader) {
//            self.shader = shader
//        }
// TODO: update shader attributes
//        if let attributes: [String: SKAttributeValue] = object.value(for: keys.attributeValues) {
//            for (attribute, attributeValue) in attributes {
//                self.attributeValues[attribute] = attributeValue
//            }
//        }
        if let particleZPosition: CGFloat = object.value(for: keys.particleZPosition) {
            self.particleZPosition = particleZPosition
        }
        if #available(iOS 9.0, OSX 10.11, *) {
            if let stringValue: String = object.value(for: keys.particleRenderOrder), let particleRenderOrder = SKParticleRenderOrder(stringValue: stringValue) {
                self.particleRenderOrder = particleRenderOrder
            }
        }
        else {
            if let particleZPositionRange: CGFloat = object.value(for: keys.particleZPositionRange) {
                self.particleZPositionRange = particleZPositionRange
            }
            if let particleZPositionSpeed: CGFloat = object.value(for: keys.particleZPositionSpeed) {
                self.particleZPositionSpeed = particleZPositionSpeed
            }
        }
    }
}
