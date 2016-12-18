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
    func testStringInit() {
        let grid = SKTileSetType(stringValue: "grid")
        XCTAssertEqual(grid, .grid)
        
        let isometric = SKTileSetType(stringValue: "isometric")
        XCTAssertEqual(isometric, .isometric)
        
        let hexagonalFlat = SKTileSetType(stringValue: "hexagonalflat")
        XCTAssertEqual(hexagonalFlat, .hexagonalFlat)
        
        let hexagonalPointy = SKTileSetType(stringValue: "hexagonalpointy")
        XCTAssertEqual(hexagonalPointy, .hexagonalPointy)
        
        let invalid = SKTileSetType(stringValue: "invalid")
        XCTAssertNil(invalid)
    }
    
    func testUpperStringInit() {
        let grid = SKTileSetType(stringValue: "GRID")
        XCTAssertEqual(grid, .grid)
        
        let isometric = SKTileSetType(stringValue: "ISOMETRIC")
        XCTAssertEqual(isometric, .isometric)
        
        let hexagonalFlat = SKTileSetType(stringValue: "HEXAGONALFLAT")
        XCTAssertEqual(hexagonalFlat, .hexagonalFlat)
        
        let hexagonalPointy = SKTileSetType(stringValue: "HEXAGONALPOINTY")
        XCTAssertEqual(hexagonalPointy, .hexagonalPointy)
        
        let invalid = SKTileSetType(stringValue: "INVALID")
        XCTAssertNil(invalid)
    }
    
    func testStringValue() {
        let grid = SKTileSetType.grid
        XCTAssertEqual(grid.stringValue, "grid")
        
        let isometric = SKTileSetType.isometric
        XCTAssertEqual(isometric.stringValue, "isometric")
        
        let hexagonalFlat = SKTileSetType.hexagonalFlat
        XCTAssertEqual(hexagonalFlat.stringValue, "hexagonalflat")
        
        let hexagonalPointy = SKTileSetType.hexagonalPointy
        XCTAssertEqual(hexagonalPointy.stringValue, "hexagonalpointy")
    }
}
