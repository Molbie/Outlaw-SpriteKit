//
//  SKReachConstraintsTests.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/18/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import XCTest
import Outlaw
import OutlawCoreGraphics
import OutlawSimd
import SpriteKit
@testable import OutlawSpriteKit


@available(OSX 10.10, *)
class SKReachConstraintsTests: XCTestCase {
    fileprivate typealias keys = SKReachConstraints.ExtractableKeys
    fileprivate typealias indexes = SKReachConstraints.ExtractableIndexes
    
    func testExtractableValue() {
        let rawData: [String: CGFloat] = [keys.lowerAngleLimit: 30,
                                          keys.upperAngleLimit: 60]
        let data: [String: [String: CGFloat]] = ["data": rawData]
        let value: SKReachConstraints = try! data.value(for: "data")
        
        XCTAssertEqual(value.lowerAngleLimit, rawData[keys.lowerAngleLimit])
        XCTAssertEqual(value.upperAngleLimit, rawData[keys.upperAngleLimit])
    }
    
    func testIndexExtractableValue() {
        var rawData = [CGFloat](repeating: 0, count: 2)
        rawData[indexes.lowerAngleLimit] = 30
        rawData[indexes.upperAngleLimit] = 60
        
        let data: [[CGFloat]] = [rawData]
        let value: SKReachConstraints = try! data.value(for: 0)
        
        XCTAssertEqual(value.lowerAngleLimit, rawData[indexes.lowerAngleLimit])
        XCTAssertEqual(value.upperAngleLimit, rawData[indexes.upperAngleLimit])
    }
    
    func testInvalidValue() {
        let rawData: String = "Hello, Outlaw!"
        let data: [String] = [rawData]
        
        let ex = self.expectation(description: "Invalid data")
        do {
            let _: SKReachConstraints = try data.value(for: 0)
        }
        catch {
            if case OutlawError.typeMismatchWithIndex = error {
                ex.fulfill()
            }
        }
        self.waitForExpectations(timeout: 1, handler: nil)
    }
    
    func testSerializable() {
        let value = SKReachConstraints(lowerAngleLimit: 30, upperAngleLimit: 60)
        let data: [String: CGFloat] = value.serialized()
        
        XCTAssertEqual(data[keys.lowerAngleLimit], value.lowerAngleLimit)
        XCTAssertEqual(data[keys.upperAngleLimit], value.upperAngleLimit)
    }
    
    func testIndexSerializable() {
        let value = SKReachConstraints(lowerAngleLimit: 30, upperAngleLimit: 60)
        let data: [CGFloat] = SKReachConstraints.serialize(value)
        
        XCTAssertEqual(data[indexes.lowerAngleLimit], value.lowerAngleLimit)
        XCTAssertEqual(data[indexes.upperAngleLimit], value.upperAngleLimit)
    }
    
    func testUpdatable() {
        let data: [String: CGFloat] = [keys.lowerAngleLimit: 30,
                                       keys.upperAngleLimit: 60]
        let value = SKReachConstraints(lowerAngleLimit: 0, upperAngleLimit: 1)
        try! value.update(with: data)
        
        XCTAssertEqual(value.lowerAngleLimit, data[keys.lowerAngleLimit])
        XCTAssertEqual(value.upperAngleLimit, data[keys.upperAngleLimit])
    }
    
    func testIndexUpdatable() {
        var data = [CGFloat](repeating: 0, count: 2)
        data[indexes.lowerAngleLimit] = 30
        data[indexes.upperAngleLimit] = 60
        
        let value = SKReachConstraints(lowerAngleLimit: 0, upperAngleLimit: 1)
        try! value.update(with: data)
        
        XCTAssertEqual(value.lowerAngleLimit, data[indexes.lowerAngleLimit])
        XCTAssertEqual(value.upperAngleLimit, data[indexes.upperAngleLimit])
    }
}
