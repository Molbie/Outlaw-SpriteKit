//
//  SKCropNode+Outlaw.swift
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

public extension SKCropNode {
    struct CropNodeExtractableKeys {
        public static let maskNode = "maskNode"
    }
    private typealias keys = SKCropNode.CropNodeExtractableKeys
}

public extension SKCropNode { /* Serializable */
    func serializedCropNode(withChildren: Bool) -> [String: Any] {
        var result = self.serializedNode(withChildren: withChildren)
        if let maskNode = self.maskNode {
            result[keys.maskNode] = maskNode.serialized()
        }
        
        return result
    }
}

public extension SKCropNode { /* Updatable */
    func updateCropNode(with object: Extractable) throws {
        try self.updateNode(with: object)
        if let maskNode: [String: Any] = object.optional(for: keys.maskNode) {
            // TODO: create one if it doesn't already exist
            try self.maskNode?.update(with: maskNode)
        }
    }
}
