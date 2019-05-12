//
//  SKViewTests.swift
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


#if !os(watchOS)
class SKViewTests: XCTestCase {
    fileprivate typealias keys = SKView.ExtractableKeys
    
    func testSerializable() {
        let view = SKView()
        let data: [String: Any] = view.serialized()
        
        XCTAssertEqual(view.isPaused, data[keys.isPaused] as? Bool)
        XCTAssertEqual(view.showsFPS, data[keys.showsFPS] as? Bool)
        XCTAssertEqual(view.showsDrawCount, data[keys.showsDrawCount] as? Bool)
        XCTAssertEqual(view.showsNodeCount, data[keys.showsNodeCount] as? Bool)
        XCTAssertEqual(view.isAsynchronous, data[keys.isAsynchronous] as? Bool)
        XCTAssertEqual(view.ignoresSiblingOrder, data[keys.ignoresSiblingOrder] as? Bool)
        if #available(OSX 10.10, *) {
            XCTAssertEqual(view.allowsTransparency, data[keys.allowsTransparency] as? Bool)
            XCTAssertEqual(view.shouldCullNonVisibleNodes, data[keys.shouldCullNonVisibleNodes] as? Bool)
            XCTAssertEqual(view.showsQuadCount, data[keys.showsQuadCount] as? Bool)
            XCTAssertEqual(view.showsPhysics, data[keys.showsPhysics] as? Bool)
            XCTAssertEqual(view.showsFields, data[keys.showsFields] as? Bool)
        }
        if #available(iOS 10.0, tvOS 10.0, OSX 10.12, *) {
            XCTAssertEqual(view.preferredFramesPerSecond, data[keys.preferredFramesPerSecond] as? Int)
        }
        else {
            XCTAssertEqual(view.frameInterval, data[keys.frameInterval] as? Int)
        }
    }
    
    func testUpdatable() {
        let view = SKView()
        let data: [String: Any] = [keys.isPaused: true,
                                   keys.showsFPS: true,
                                   keys.showsDrawCount: true,
                                   keys.showsNodeCount: true,
                                   keys.isAsynchronous: true,
                                   keys.ignoresSiblingOrder: true,
                                   keys.allowsTransparency: true,
                                   keys.shouldCullNonVisibleNodes: false,
                                   keys.showsQuadCount: true,
                                   keys.showsPhysics: true,
                                   keys.showsFields: true,
                                   keys.preferredFramesPerSecond: 30,
                                   keys.frameInterval: 2]
        try! view.update(with: data)
        
        XCTAssertEqual(view.isPaused, data[keys.isPaused] as? Bool)
        XCTAssertEqual(view.showsFPS, data[keys.showsFPS] as? Bool)
        XCTAssertEqual(view.showsDrawCount, data[keys.showsDrawCount] as? Bool)
        XCTAssertEqual(view.showsNodeCount, data[keys.showsNodeCount] as? Bool)
        XCTAssertEqual(view.isAsynchronous, data[keys.isAsynchronous] as? Bool)
        XCTAssertEqual(view.ignoresSiblingOrder, data[keys.ignoresSiblingOrder] as? Bool)
        if #available(OSX 10.10, *) {
            XCTAssertEqual(view.allowsTransparency, data[keys.allowsTransparency] as? Bool)
            XCTAssertEqual(view.shouldCullNonVisibleNodes, data[keys.shouldCullNonVisibleNodes] as? Bool)
            XCTAssertEqual(view.showsQuadCount, data[keys.showsQuadCount] as? Bool)
            XCTAssertEqual(view.showsPhysics, data[keys.showsPhysics] as? Bool)
            XCTAssertEqual(view.showsFields, data[keys.showsFields] as? Bool)
        }
        if #available(iOS 10.0, tvOS 10.0, OSX 10.12, *) {
            XCTAssertEqual(view.preferredFramesPerSecond, data[keys.preferredFramesPerSecond] as? Int)
        }
        else {
            XCTAssertEqual(view.frameInterval, data[keys.frameInterval] as? Int)
        }
    }
}
#endif
