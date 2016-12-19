//
//  SKAudioNode+Outlaw.swift
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

@available(iOS 9.0, OSX 10.11, *)
public extension SKAudioNode {
    public struct AudioNodeExtractableKeys {
        public static let avAudioNode = "avAudioNode"
        public static let autoplayLooped = "autoplayLooped"
        public static let isPositional = "isPositional"
    }
    fileprivate typealias keys = SKAudioNode.AudioNodeExtractableKeys
}

@available(iOS 9.0, OSX 10.11, *)
public extension SKAudioNode { /* Serializable */
    public func serializedAudioNode(withChildren: Bool) -> [String: Any] {
        var result = self.serializedNode(withChildren: withChildren)
// TODO: implment audioNode extraction
//        if let avAudioNode = self.avAudioNode {
//            result[keys.avAudioNode] = self.avAudioNode.serialized()
//        }
        result[keys.autoplayLooped] = self.autoplayLooped
        result[keys.isPositional] = self.isPositional
        
        return result
    }
}

@available(iOS 9.0, OSX 10.11, *)
public extension SKAudioNode { /* Updatable */
    public func updateAudioNode(with object: Extractable) throws {
        try self.updateNode(with: object)
// TODO: update avAudioNode
//        if let avAudioNode: [String: Any] = object.value(for: keys.avAudioNode) {
//            // TODO: create a new one if it doesn't exist
//            try self.avAudioNode?.update(with: avAudioNode)
//        }
        if let autoplayLooped: Bool = object.value(for: keys.autoplayLooped) {
            self.autoplayLooped = autoplayLooped
        }
        if let isPositional: Bool = object.value(for: keys.isPositional) {
            self.isPositional = isPositional
        }
    }
}
