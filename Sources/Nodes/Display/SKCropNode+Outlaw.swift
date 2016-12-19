//
//  SKCropNode+Outlaw.swift
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

public extension SKCropNode {
    public struct CropNodeExtractableKeys {
        public static let maskNode = "maskNode"
    }
}

public extension SKCropNode { /* Serializable */
    public func serializedCropNode(withChildren: Bool) -> [String: Any] {
        typealias keys = SKCropNode.CropNodeExtractableKeys
        
        var result = self.serializedNode(withChildren: withChildren)
        if let maskNode = self.maskNode {
            result[keys.maskNode] = maskNode.serialized()
        }
        
        return result
    }
}

public extension SKCropNode { /* Updatable */
    public func updateCropNode(with object: Extractable) throws {
        typealias keys = SKCropNode.CropNodeExtractableKeys
        
        try self.updateNode(with: object)
        if let maskNode: [String: Any] = object.value(for: keys.maskNode) {
            // TODO: create one if it doesn't already exist
            try self.maskNode?.update(with: maskNode)
        }
    }
}
