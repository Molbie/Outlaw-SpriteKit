//
//  SKCameraNode+Outlaw.swift
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
public extension SKCameraNode { /* Serializable */
    func serializedCameraNode(withChildren: Bool) -> [String: Any] {
        return self.serializedNode(withChildren: withChildren)
    }
}

@available(iOS 9.0, OSX 10.11, *)
public extension SKCameraNode { /* Updatable */
    func updateCameraNode(with object: Extractable) throws {
        try self.updateNode(with: object)
    }
}
