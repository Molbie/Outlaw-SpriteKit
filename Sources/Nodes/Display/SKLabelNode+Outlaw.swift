//
//  SKLabelNode+Outlaw.swift
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

public extension SKLabelNode {
    public struct LabelNodeExtractableKeys {
        public static let verticalAlignmentMode = "verticalAlignmentMode"
        public static let horizontalAlignmentMode = "horizontalAlignmentMode"
        public static let fontName = "fontName"
        public static let text = "text"
        public static let fontSize = "fontSize"
        public static let fontColor = "fontColor"
        public static let colorBlendFactor = "colorBlendFactor"
        public static let color = "color"
        public static let blendMode = "blendMode"
    }
    fileprivate typealias keys = SKLabelNode.LabelNodeExtractableKeys
}

public extension SKLabelNode { /* Serializable */
    public func serializedLabelNode(withChildren: Bool) -> [String: Any] {
        var result = self.serializedNode(withChildren: withChildren)
        result[keys.verticalAlignmentMode] = self.verticalAlignmentMode.stringValue
        result[keys.horizontalAlignmentMode] = self.horizontalAlignmentMode.stringValue
        result[keys.fontName] = self.fontName ?? ""
        result[keys.text] = self.text ?? ""
        result[keys.fontSize] = self.fontSize
        if let fontColor = self.fontColor {
            result[keys.fontColor] = fontColor.serialized()
        }
        else {
            result[keys.fontColor] = SKColor.white.serialized()
        }
        result[keys.colorBlendFactor] = self.colorBlendFactor
        if let color = self.color {
            result[keys.color] = color.serialized()
        }
        result[keys.blendMode] = self.blendMode.stringValue
        
        return result
    }
}

public extension SKLabelNode { /* Updatable */
    public func updateLabelNode(with object: Extractable) throws {
        try self.updateNode(with: object)
        if let stringValue: String = object.value(for: keys.verticalAlignmentMode), let verticalAlignmentMode = SKLabelVerticalAlignmentMode(stringValue: stringValue) {
            self.verticalAlignmentMode = verticalAlignmentMode
        }
        if let stringValue: String = object.value(for: keys.horizontalAlignmentMode), let horizontalAlignmentMode = SKLabelHorizontalAlignmentMode(stringValue: stringValue) {
            self.horizontalAlignmentMode = horizontalAlignmentMode
        }
        if let fontName: String = object.value(for: keys.fontName), !fontName.isEmpty {
            self.fontName = fontName
        }
        if let text: String = object.value(for: keys.text) {
            self.text = text
        }
        if let fontSize: CGFloat = object.value(for: keys.fontSize) {
            self.fontSize = fontSize
        }
        if let fontColor: SKColor = object.value(for: keys.fontColor) {
            self.fontColor = fontColor
        }
        if let colorBlendFactor: CGFloat = object.value(for: keys.colorBlendFactor) {
            self.colorBlendFactor = colorBlendFactor
        }
        if let color: SKColor = object.value(for: keys.color) {
            self.color = color
        }
        if let stringValue: String = object.value(for: keys.blendMode), let blendMode = SKBlendMode(stringValue: stringValue) {
            self.blendMode = blendMode
        }
    }
}
