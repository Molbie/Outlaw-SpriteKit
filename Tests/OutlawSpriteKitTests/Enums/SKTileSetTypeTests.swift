//
//  SKTileSetTypeTests.swift
//  OutlawSpriteKit
//
//  Created by Brian Mullen on 12/17/16.
//  Copyright © 2016 Molbie LLC. All rights reserved.
//

import XCTest
import Outlaw
import OutlawCoreGraphics
import OutlawSimd
import SpriteKit
@testable import OutlawSpriteKit


@available(iOS 10.0, tvOS 10.0, OSX 10.12, watchOS 3.0, *)
class SKTileSetTypeTests: XCTestCase {
    fileprivate typealias strings = SKTileSetType.StringValues
    
    func testStringInit() {
        let grid = SKTileSetType(stringValue: strings.grid)
        XCTAssertEqual(grid, .grid)
        
        let isometric = SKTileSetType(stringValue: strings.isometric)
        XCTAssertEqual(isometric, .isometric)
        
        let hexagonalFlat = SKTileSetType(stringValue: strings.hexagonalFlat)
        XCTAssertEqual(hexagonalFlat, .hexagonalFlat)
        
        let hexagonalPointy = SKTileSetType(stringValue: strings.hexagonalPointy)
        XCTAssertEqual(hexagonalPointy, .hexagonalPointy)
        
        let invalid = SKTileSetType(stringValue: "invalid")
        XCTAssertNil(invalid)
    }
    
    func testUpperStringInit() {
        let grid = SKTileSetType(stringValue: strings.grid.uppercased())
        XCTAssertEqual(grid, .grid)
        
        let isometric = SKTileSetType(stringValue: strings.isometric.uppercased())
        XCTAssertEqual(isometric, .isometric)
        
        let hexagonalFlat = SKTileSetType(stringValue: strings.hexagonalFlat.uppercased())
        XCTAssertEqual(hexagonalFlat, .hexagonalFlat)
        
        let hexagonalPointy = SKTileSetType(stringValue: strings.hexagonalPointy.uppercased())
        XCTAssertEqual(hexagonalPointy, .hexagonalPointy)
        
        let invalid = SKTileSetType(stringValue: "INVALID")
        XCTAssertNil(invalid)
    }
    
    func testStringValue() {
        let grid = SKTileSetType.grid
        XCTAssertEqual(grid.stringValue, strings.grid)
        
        let isometric = SKTileSetType.isometric
        XCTAssertEqual(isometric.stringValue, strings.isometric)
        
        let hexagonalFlat = SKTileSetType.hexagonalFlat
        XCTAssertEqual(hexagonalFlat.stringValue, strings.hexagonalFlat)
        
        let hexagonalPointy = SKTileSetType.hexagonalPointy
        XCTAssertEqual(hexagonalPointy.stringValue, strings.hexagonalPointy)
    }
}
