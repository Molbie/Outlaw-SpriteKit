//
//  SKNode+Outlaw.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/16/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit
import Outlaw
import OutlawCoreGraphics


// NOTE: Swift doesn't allow methods to be overriden
//       within extensions, so we are defining
//       explicit methods for each SKNode subclass

public extension SKNode {
    public struct NodeExtractableKeys {
        public static let position = "position"
        public static let zPosition = "zPosition"
        public static let zRotation = "zRotation"
        public static let xScale = "xScale"
        public static let yScale = "yScale"
        public static let speed = "speed"
        public static let alpha = "alpha"
        public static let isPaused = "isPaused"
        public static let isHidden = "isHidden"
        public static let isUserInteractionEnabled = "isUserInteractionEnabled"
        public static let children = "children"
        public static let name = "name"
        public static let physicsBody = "physicsBody"
        public static let userData = "userData"
        public static let reachConstraints = "reachConstraints"
        public static let constraints = "constraints"
    }
    fileprivate typealias keys = SKNode.NodeExtractableKeys
}

extension SKNode: Serializable {
    public func serialized() -> [String: Any] {
        return self.serialized(withChildren: true)
    }
    
    public func serialized(withChildren: Bool) -> [String: Any] {
        switch self {
            case let node as SKScene:
                return node.serializedSceneNode(withChildren: withChildren)
            case let node as SKEffectNode:
                return node.serializedEffectNode(withChildren: withChildren)
            case let node as SKSpriteNode:
                return node.serializedSpriteNode(withChildren: withChildren)
            case let node as SKLabelNode:
                return node.serializedLabelNode(withChildren: withChildren)
            case let node as SKShapeNode:
                return node.serializedShapeNode(withChildren: withChildren)
            case let node as SKCropNode:
                return node.serializedCropNode(withChildren: withChildren)
            case let node as SKVideoNode:
                return node.serializedVideoNode(withChildren: withChildren)
//            case let node as SKEmitterNode:
//                return node.serializedEmitterNode(withChildren: withChildren)
            default:
                if #available(iOS 8.0, OSX 10.10, *) {
                    switch self {
//                        case let node as SKLightNode:
//                            return node.serializedLightNode(withChildren: withChildren)
//                        case let node as SKFieldNode:
//                            return node.serializedFieldNode(withChildren: withChildren)
                        default:
                            if #available(iOS 9.0, OSX 10.11, *) {
                                switch self {
                                    case let node as SKCameraNode:
                                        return node.serializedCameraNode(withChildren: withChildren)
//                                    case let node as SKAudioNode:
//                                        return node.serializedAudioNode(withChildren: withChildren)
                                    default:
                                        return self.serializedNode(withChildren: withChildren)
                                }
                            }
                            else {
                                return self.serializedNode(withChildren: withChildren)
                            }
                    }
                }
                else {
                    return self.serializedNode(withChildren: withChildren)
                }
        }
    }
}

extension SKNode: Updatable {
    public func update(with object: Extractable) throws {
        switch self {
            case let node as SKScene:
                try node.updateSceneNode(with: object)
            case let node as SKEffectNode:
                try node.updateEffectNode(with: object)
            case let node as SKSpriteNode:
                try node.updateSpriteNode(with: object)
            case let node as SKLabelNode:
                try node.updateLabelNode(with: object)
            case let node as SKShapeNode:
                try node.updateShapeNode(with: object)
            case let node as SKCropNode:
                try node.updateCropNode(with: object)
            case let node as SKVideoNode:
                try node.updateVideoNode(with: object)
//            case let node as SKEmitterNode:
//                try node.updateEmitterNode(with: object)
            default:
                if #available(OSX 10.10, *) {
                    switch self {
//                    case let node as SKLightNode:
//                        try node.updateLightNode(with: object)
//                    case let node as SKFieldNode:
//                        try node.updateFieldNode(with: object)
                        default:
                            if #available(iOS 9.0, OSX 10.11, *) {
                                switch self {
                                case let node as SKCameraNode:
                                    try node.updateCameraNode(with: object)
    //                            case let node as SKAudioNode:
    //                                try node.updateAudioNode(with: object)
                                default:
                                    try self.updateNode(with: object)
                                }
                            }
                            else {
                                try self.updateNode(with: object)
                            }
                    }
                }
                else {
                    try self.updateNode(with: object)
                }
        }
    }
}

public extension SKNode { /* Serializable */
    public func serializedNode(withChildren: Bool) -> [String: Any] {
        var result = [String: Any]()
        result[keys.position] = self.position.serialized()
        result[keys.zPosition] = self.zPosition
        result[keys.zRotation] = self.zRotation
        result[keys.xScale] = self.xScale
        result[keys.yScale] = self.yScale
        result[keys.speed] = self.speed
        result[keys.alpha] = self.alpha
        result[keys.isPaused] = self.isPaused
        result[keys.isHidden] = self.isHidden
        result[keys.isUserInteractionEnabled] = self.isUserInteractionEnabled
        if withChildren {
            var data = [[String: Any]]()
            for child in self.children {
                data.append(child.serialized())
            }
            result[keys.children] = data
        }
        result[keys.name] = self.name ?? ""
        if let physicsBody = self.physicsBody {
            result[keys.physicsBody] = SKPhysicsBody.serialize(physicsBody)
        }
        if let userData = self.userData {
            result[keys.userData] = userData
        }
        if #available(OSX 10.10, *) {
            if let reachConstraints = self.reachConstraints {
                result[keys.reachConstraints] = reachConstraints.serialized()
            }
        }
// TODO: implement constraints serialization
//        if let constraints = self.constraints, !constraints.isEmpty {
//            var data = [[String: Any]]()
//            for constraint in constraints {
//                data.append(constraint.serialized())
//            }
//            result[keys.constraints] = data
//        }
        
        return result
    }
}

public extension SKNode { /* Updatable */
    public func updateNode(with object: Extractable) throws {
        if let position: CGPoint = object.value(for: keys.position) {
            self.position = position
        }
        if let zPosition: CGFloat = object.value(for: keys.zPosition) {
            self.zPosition = zPosition
        }
        if let zRotation: CGFloat = object.value(for: keys.zRotation) {
            self.zRotation = zRotation
        }
        if let xScale: CGFloat = object.value(for: keys.xScale) {
            self.xScale = xScale
        }
        if let yScale: CGFloat = object.value(for: keys.yScale) {
            self.yScale = yScale
        }
        if let speed: CGFloat = object.value(for: keys.speed) {
            self.speed = speed
        }
        if let alpha: CGFloat = object.value(for: keys.alpha) {
            self.alpha = alpha
        }
        if let isPaused: Bool = object.value(for: keys.isPaused) {
            self.isPaused = isPaused
        }
        if let isHidden: Bool = object.value(for: keys.isHidden) {
            self.isHidden = isHidden
        }
        if let isUserInteractionEnabled: Bool = object.value(for: keys.isUserInteractionEnabled) {
            self.isUserInteractionEnabled = isUserInteractionEnabled
        }
// TODO: update children
//        if let children: [[String: Any]] = object.value(for: keys.children) {
//
//        }
        if let name: String = object.value(for: keys.name) {
            self.name = name
        }
        if let physicsBodyData: [String: Any] = object.value(for: keys.physicsBody) {
            // TODO: create a physics body if one doesn't already exist
            if let physicsBody = self.physicsBody {
                try SKPhysicsBody.update(physicsBody, with: physicsBodyData)
            }
        }
        if let userData: [AnyHashable: Any] = object.value(for: keys.userData) {
            if self.userData == nil {
                self.userData = NSMutableDictionary()
            }
            self.userData?.addEntries(from: userData)
        }
        if #available(OSX 10.10, *) {
            if let reachConstraints: [String: Any] = object.value(for: keys.reachConstraints) {
                if self.reachConstraints == nil {
                    self.reachConstraints = SKReachConstraints(lowerAngleLimit: 0, upperAngleLimit: 2 * CGFloat.pi)
                }
                try self.reachConstraints?.update(with: reachConstraints)
            }
        }
// TODO: update constraints
//        if let self.constraints: [[String: Any]] = object.value(for: keys.constraints) {
//
//        }
    }
}
