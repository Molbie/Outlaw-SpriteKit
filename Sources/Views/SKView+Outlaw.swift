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
extension SKView: Serializable {
    public func serialized() -> [String: Any] {
        var result = [String: Any]()
        
        result["isPaused"] = self.isPaused
        result["showsFPS"] = self.showsFPS
        result["showsDrawCount"] = self.showsDrawCount
        result["showsNodeCount"] = self.showsNodeCount
        result["isAsynchronous"] = self.isAsynchronous
        result["ignoresSiblingOrder"] = self.ignoresSiblingOrder
        if #available(OSX 10.10, *) {
            result["allowsTransparency"] = self.allowsTransparency
            result["shouldCullNonVisibleNodes"] = self.shouldCullNonVisibleNodes
            result["showsQuadCount"] = self.showsQuadCount
            result["showsPhysics"] = self.showsPhysics
            result["showsFields"] = self.showsFields
        }
        if #available(iOS 10.0, tvOS 10.0, OSX 10.12, *) {
            result["preferredFramesPerSecond"] = self.preferredFramesPerSecond
        }
        else {
            result["frameInterval"] = self.frameInterval
        }
        
        return result
    }
}

extension SKView: Updatable {
    public func update(with object: Extractable) throws {
        if let isPaused: Bool = object.value(for: "isPaused") {
            self.isPaused = isPaused
        }
        if let showsFPS: Bool = object.value(for: "showsFPS") {
            self.showsFPS = showsFPS
        }
        if let showsDrawCount: Bool = object.value(for: "showsDrawCount") {
            self.showsDrawCount = showsDrawCount
        }
        if let showsNodeCount: Bool = object.value(for: "showsNodeCount") {
            self.showsNodeCount = showsNodeCount
        }
        if let isAsynchronous: Bool = object.value(for: "isAsynchronous") {
            self.isAsynchronous = isAsynchronous
        }
        if let ignoresSiblingOrder: Bool = object.value(for: "ignoresSiblingOrder") {
            self.ignoresSiblingOrder = ignoresSiblingOrder
        }
        if #available(OSX 10.10, *) {
            if let allowsTransparency: Bool = object.value(for: "allowsTransparency") {
                self.allowsTransparency = allowsTransparency
            }
            if let shouldCullNonVisibleNodes: Bool = object.value(for: "shouldCullNonVisibleNodes") {
                self.shouldCullNonVisibleNodes = shouldCullNonVisibleNodes
            }
            if let showsQuadCount: Bool = object.value(for: "showsQuadCount") {
                self.showsQuadCount = showsQuadCount
            }
            if let showsPhysics: Bool = object.value(for: "showsPhysics") {
                self.showsPhysics = showsPhysics
            }
            if let showsFields: Bool = object.value(for: "showsFields") {
                self.showsFields = showsFields
            }
        }
        if #available(iOS 10.0, tvOS 10.0, OSX 10.12, *) {
            if let preferredFramesPerSecond: Int = object.value(for: "preferredFramesPerSecond") {
                self.preferredFramesPerSecond = preferredFramesPerSecond
            }
        }
        else {
            if let frameInterval: Int = object.value(for: "frameInterval") {
                self.frameInterval = frameInterval
            }
        }
    }
}
#endif
