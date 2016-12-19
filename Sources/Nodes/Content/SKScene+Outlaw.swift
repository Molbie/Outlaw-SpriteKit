//
//  SKScene+Outlaw.swift
//  OutlawExtensions
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

public extension SKScene {
    public struct SceneExtractableKeys {
        public static let size = "size"
        public static let scaleMode = "scaleMode"
        public static let camera = "camera"
        public static let listener = "listener"
        public static let audioEngine = "audioEngine"
        public static let backgroundColor = "backgroundColor"
        public static let anchorPoint = "anchorPoint"
        public static let physicsWorld = "physicsWorld"
    }
}

public extension SKScene { /* Serializable */
    public func serializedSceneNode(withChildren: Bool) -> [String: Any] {
        typealias keys = SKScene.SceneExtractableKeys
        
        var result = self.serializedEffectNode(withChildren: withChildren)
        result[keys.size] = self.size.serialized() as [String: CGFloat]
        result[keys.scaleMode] = self.scaleMode.stringValue
// TODO: implement camera extraction
//        if let camera = self.camera {
//            result[keys.camera] = camera.serialized()
//        }
// TODO: implement listener extraction
//        if let listener = listener {
//            result[keys.listener] = listener.serialized()
//        }
// TODO: implement audioEngine extraction
//        result[keys.audioEngine] = self.audioEngine.serialized()
        result[keys.backgroundColor] = self.backgroundColor.serialized() as [String: CGFloat]
        result[keys.anchorPoint] = self.anchorPoint.serialized() as [String: CGFloat]
        result[keys.physicsWorld] = SKPhysicsWorld.serialize(self.physicsWorld)
        
        return result
    }
}

public extension SKScene { /* Updatable */
    public func updateSceneNode(with object: Extractable) throws {
        typealias keys = SKScene.SceneExtractableKeys
        
        try self.updateEffectNode(with: object)
        if let size: CGSize = object.value(for: keys.size) {
            self.size = size
        }
        if let scaleModeString: String = object.value(for: keys.scaleMode), let scaleMode = SKSceneScaleMode(stringValue: scaleModeString) {
            self.scaleMode = scaleMode
        }
// TODO: update camera
//        if let camera: SKCameraNode = object.value(for: keys.camera) {
//
//        }
// TODO: update listener
//        if let listenerData: [String: Any] = object.value(for: keys.listener) {
//            self.listener?.update(with: listenerData)
//        }
// TODO: update audioEngine
//        if let audioEngineData: [String: Any] = object.value(for: keys.audioEngine) {
//            self.audioEngine.update(with: audioEngineData)
//        }
        if let backgroundColor: SKColor = object.value(for: keys.backgroundColor) {
            self.backgroundColor = backgroundColor
        }
        if let anchorPoint: CGPoint = object.value(for: keys.anchorPoint) {
            self.anchorPoint = anchorPoint
        }
        if let physicsWorldData: [String: Any] = object.value(for: keys.physicsWorld) {
            try SKPhysicsWorld.update(self.physicsWorld, with: physicsWorldData)
        }
    }
}
