//
//  SKReachConstraints+Outlaw.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/16/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import SpriteKit
import Outlaw
import OutlawCoreGraphics


@available(OSX 10.10, *)
public extension SKReachConstraints {
    public struct ExtractableKeys {
        public static let lowerAngleLimit = "lowerAngleLimit"
        public static let upperAngleLimit = "upperAngleLimit"
    }
    public struct ExtractableIndexes {
        public static let lowerAngleLimit: Int = 0
        public static let upperAngleLimit: Int = 1
    }
    fileprivate typealias keys = SKReachConstraints.ExtractableKeys
    fileprivate typealias indexes = SKReachConstraints.ExtractableIndexes
}

@available(OSX 10.10, *)
extension SKReachConstraints: Value {
    public static func value(from object: Any) throws -> SKReachConstraints {
        if let data = object as? Extractable {
            let lowerAngleLimit: CGFloat = try data.value(for: keys.lowerAngleLimit)
            let upperAngleLimit: CGFloat = try data.value(for: keys.upperAngleLimit)
            
            return SKReachConstraints(lowerAngleLimit: lowerAngleLimit, upperAngleLimit: upperAngleLimit)
        }
        else if let data = object as? IndexExtractable {
            let lowerAngleLimit: CGFloat = try data.value(for: indexes.lowerAngleLimit)
            let upperAngleLimit: CGFloat = try data.value(for: indexes.upperAngleLimit)
            
            return SKReachConstraints(lowerAngleLimit: lowerAngleLimit, upperAngleLimit: upperAngleLimit)
        }
        else {
            let expectedType = "Extractable or IndexExtractable"
            throw OutlawError.typeMismatch(expected: expectedType, actual: type(of: object))
        }
    }
}

@available(OSX 10.10, *)
extension SKReachConstraints: Serializable {
    public func serialized() -> [String: CGFloat] {
        var result = [String: CGFloat]()
        result[keys.lowerAngleLimit] = self.lowerAngleLimit
        result[keys.upperAngleLimit] = self.upperAngleLimit
        
        return result
    }
}

// NOTE: unable to conform due to duplicate obj-c selector
@available(OSX 10.10, *)
public extension SKReachConstraints /* IndexSerializable */ {
    public static func serialize(_ constraint: SKReachConstraints) -> [CGFloat] {
        var result = [CGFloat](repeating: 0, count: 2)
        result[indexes.lowerAngleLimit] = constraint.lowerAngleLimit
        result[indexes.upperAngleLimit] = constraint.upperAngleLimit
        
        return result
    }
}

@available(OSX 10.10, *)
extension SKReachConstraints: Updatable {
    public func update(with object: Extractable) throws {
        if let lowerAngleLimit: CGFloat = object.value(for: keys.lowerAngleLimit) {
            self.lowerAngleLimit = lowerAngleLimit
        }
        if let upperAngleLimit: CGFloat = object.value(for: keys.upperAngleLimit) {
            self.upperAngleLimit = upperAngleLimit
        }
    }
}

@available(OSX 10.10, *)
extension SKReachConstraints: IndexUpdatable {
    public func update(with object: IndexExtractable) throws {
        if let lowerAngleLimit: CGFloat = object.value(for: indexes.lowerAngleLimit) {
            self.lowerAngleLimit = lowerAngleLimit
        }
        if let upperAngleLimit: CGFloat = object.value(for: indexes.upperAngleLimit) {
            self.upperAngleLimit = upperAngleLimit
        }
    }
}
