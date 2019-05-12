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
    struct VideoNodeExtractableKeys {
        public static let size = "size"
        public static let anchorPoint = "anchorPoint"
    }
    private typealias keys = SKVideoNode.VideoNodeExtractableKeys
}

public extension SKVideoNode { /* Serializable */
    func serializedVideoNode(withChildren: Bool) -> [String: Any] {
        var result = self.serializedNode(withChildren: withChildren)
        result[keys.size] = self.size.serialized()
        result[keys.anchorPoint] = self.anchorPoint.serialized()
        
        return result
    }
}

public extension SKVideoNode { /* Updatable */
    func updateVideoNode(with object: Extractable) throws {
        try self.updateNode(with: object)
        if let size: CGSize = object.optional(for: keys.size) {
            self.size = size
        }
        if let anchorPoint: CGPoint = object.optional(for: keys.anchorPoint) {
            self.anchorPoint = anchorPoint
        }
    }
}
