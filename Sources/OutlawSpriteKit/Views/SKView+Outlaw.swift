//
//  SKView+Outlaw.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/16/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit
import Outlaw


#if !os(watchOS)
public extension SKView {
    struct ExtractableKeys {
        public static let isPaused = "isPaused"
        public static let showsFPS = "showsFPS"
        public static let showsDrawCount = "showsDrawCount"
        public static let showsNodeCount = "showsNodeCount"
        public static let isAsynchronous = "isAsynchronous"
        public static let ignoresSiblingOrder = "ignoresSiblingOrder"
        public static let allowsTransparency = "allowsTransparency"
        public static let shouldCullNonVisibleNodes = "shouldCullNonVisibleNodes"
        public static let showsQuadCount = "showsQuadCount"
        public static let showsPhysics = "showsPhysics"
        public static let showsFields = "showsFields"
        public static let preferredFramesPerSecond = "preferredFramesPerSecond"
        public static let frameInterval = "frameInterval"
    }
    private typealias keys = SKView.ExtractableKeys
}

extension SKView: Serializable {
    public func serialized() -> [String: Any] {
        var result = [String: Any]()
        result[keys.isPaused] = self.isPaused
        result[keys.showsFPS] = self.showsFPS
        result[keys.showsDrawCount] = self.showsDrawCount
        result[keys.showsNodeCount] = self.showsNodeCount
        result[keys.isAsynchronous] = self.isAsynchronous
        result[keys.ignoresSiblingOrder] = self.ignoresSiblingOrder
        if #available(OSX 10.10, *) {
            result[keys.allowsTransparency] = self.allowsTransparency
            result[keys.shouldCullNonVisibleNodes] = self.shouldCullNonVisibleNodes
            result[keys.showsQuadCount] = self.showsQuadCount
            result[keys.showsPhysics] = self.showsPhysics
            result[keys.showsFields] = self.showsFields
        }
        if #available(iOS 10.0, tvOS 10.0, OSX 10.12, *) {
            result[keys.preferredFramesPerSecond] = self.preferredFramesPerSecond
        }
        else {
            result[keys.frameInterval] = self.frameInterval
        }
        
        return result
    }
}

extension SKView: Updatable {
    public func update(with object: Extractable) throws {
        if let isPaused: Bool = object.optional(for: keys.isPaused) {
            self.isPaused = isPaused
        }
        if let showsFPS: Bool = object.optional(for: keys.showsFPS) {
            self.showsFPS = showsFPS
        }
        if let showsDrawCount: Bool = object.optional(for: keys.showsDrawCount) {
            self.showsDrawCount = showsDrawCount
        }
        if let showsNodeCount: Bool = object.optional(for: keys.showsNodeCount) {
            self.showsNodeCount = showsNodeCount
        }
        if let isAsynchronous: Bool = object.optional(for: keys.isAsynchronous) {
            self.isAsynchronous = isAsynchronous
        }
        if let ignoresSiblingOrder: Bool = object.optional(for: keys.ignoresSiblingOrder) {
            self.ignoresSiblingOrder = ignoresSiblingOrder
        }
        if #available(OSX 10.10, *) {
            if let allowsTransparency: Bool = object.optional(for: keys.allowsTransparency) {
                self.allowsTransparency = allowsTransparency
            }
            if let shouldCullNonVisibleNodes: Bool = object.optional(for: keys.shouldCullNonVisibleNodes) {
                self.shouldCullNonVisibleNodes = shouldCullNonVisibleNodes
            }
            if let showsQuadCount: Bool = object.optional(for: keys.showsQuadCount) {
                self.showsQuadCount = showsQuadCount
            }
            if let showsPhysics: Bool = object.optional(for: keys.showsPhysics) {
                self.showsPhysics = showsPhysics
            }
            if let showsFields: Bool = object.optional(for: keys.showsFields) {
                self.showsFields = showsFields
            }
        }
        if #available(iOS 10.0, tvOS 10.0, OSX 10.12, *) {
            if let preferredFramesPerSecond: Int = object.optional(for: keys.preferredFramesPerSecond) {
                self.preferredFramesPerSecond = preferredFramesPerSecond
            }
        }
        else {
            if let frameInterval: Int = object.optional(for: keys.frameInterval) {
                self.frameInterval = frameInterval
            }
        }
    }
}
#endif
