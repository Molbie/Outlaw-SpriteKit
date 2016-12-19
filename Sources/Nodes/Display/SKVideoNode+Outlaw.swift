//
//  SKVideoNode+Outlaw.swift
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

public extension SKVideoNode {
    public struct VideoNodeExtractableKeys {
        public static let size = "size"
        public static let anchorPoint = "anchorPoint"
    }
}

public extension SKVideoNode { /* Serializable */
    public func serializedVideoNode(withChildren: Bool) -> [String: Any] {
        typealias keys = SKVideoNode.VideoNodeExtractableKeys
        
        var result = self.serializedNode(withChildren: withChildren)
        result[keys.size] = self.size.serialized() as [String: CGFloat]
        result[keys.anchorPoint] = self.anchorPoint.serialized() as [String: CGFloat]
        
        return result
    }
}

public extension SKVideoNode { /* Updatable */
    public func updateVideoNode(with object: Extractable) throws {
        typealias keys = SKVideoNode.VideoNodeExtractableKeys
        
        try self.updateNode(with: object)
        if let size: CGSize = object.value(for: keys.size) {
            self.size = size
        }
        if let anchorPoint: CGPoint = object.value(for: keys.anchorPoint) {
            self.anchorPoint = anchorPoint
        }
    }
}
