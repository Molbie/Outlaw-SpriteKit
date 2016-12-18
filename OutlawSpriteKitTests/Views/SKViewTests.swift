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
    func testSerializable() {
        let view = SKView()
        let data: [String: Any] = view.serialized()
        
        XCTAssertEqual(view.isPaused, data["isPaused"] as? Bool)
        XCTAssertEqual(view.showsFPS, data["showsFPS"] as? Bool)
        XCTAssertEqual(view.showsDrawCount, data["showsDrawCount"] as? Bool)
        XCTAssertEqual(view.showsNodeCount, data["showsNodeCount"] as? Bool)
        XCTAssertEqual(view.isAsynchronous, data["isAsynchronous"] as? Bool)
        XCTAssertEqual(view.ignoresSiblingOrder, data["ignoresSiblingOrder"] as? Bool)
        if #available(OSX 10.10, *) {
            XCTAssertEqual(view.allowsTransparency, data["allowsTransparency"] as? Bool)
            XCTAssertEqual(view.shouldCullNonVisibleNodes, data["shouldCullNonVisibleNodes"] as? Bool)
            XCTAssertEqual(view.showsQuadCount, data["showsQuadCount"] as? Bool)
            XCTAssertEqual(view.showsPhysics, data["showsPhysics"] as? Bool)
            XCTAssertEqual(view.showsFields, data["showsFields"] as? Bool)
        }
        if #available(iOS 10.0, tvOS 10.0, OSX 10.12, *) {
            XCTAssertEqual(view.preferredFramesPerSecond, data["preferredFramesPerSecond"] as? Int)
        }
        else {
            XCTAssertEqual(view.frameInterval, data["frameInterval"] as? Int)
        }
    }
    
    func testUpdatable() {
        let view = SKView()
        let data: [String: Any] = ["isPaused": true,
                                   "showsFPS": true,
                                   "showsDrawCount": true,
                                   "showsNodeCount": true,
                                   "isAsynchronous": false,
                                   "ignoresSiblingOrder": true,
                                   "allowsTransparency": true,
                                   "shouldCullNonVisibleNodes": false,
                                   "showsQuadCount": true,
                                   "showsPhysics": true,
                                   "showsFields": true,
                                   "preferredFramesPerSecond": 30,
                                   "frameInterval": 2]
        try! view.update(with: data)
        
        XCTAssertEqual(view.isPaused, data["isPaused"] as? Bool)
        XCTAssertEqual(view.showsFPS, data["showsFPS"] as? Bool)
        XCTAssertEqual(view.showsDrawCount, data["showsDrawCount"] as? Bool)
        XCTAssertEqual(view.showsNodeCount, data["showsNodeCount"] as? Bool)
        XCTAssertEqual(view.isAsynchronous, data["isAsynchronous"] as? Bool)
        XCTAssertEqual(view.ignoresSiblingOrder, data["ignoresSiblingOrder"] as? Bool)
        if #available(OSX 10.10, *) {
            XCTAssertEqual(view.allowsTransparency, data["allowsTransparency"] as? Bool)
            XCTAssertEqual(view.shouldCullNonVisibleNodes, data["shouldCullNonVisibleNodes"] as? Bool)
            XCTAssertEqual(view.showsQuadCount, data["showsQuadCount"] as? Bool)
            XCTAssertEqual(view.showsPhysics, data["showsPhysics"] as? Bool)
            XCTAssertEqual(view.showsFields, data["showsFields"] as? Bool)
        }
        if #available(iOS 10.0, tvOS 10.0, OSX 10.12, *) {
            XCTAssertEqual(view.preferredFramesPerSecond, data["preferredFramesPerSecond"] as? Int)
        }
        else {
            XCTAssertEqual(view.frameInterval, data["frameInterval"] as? Int)
        }
    }
}
#endif
