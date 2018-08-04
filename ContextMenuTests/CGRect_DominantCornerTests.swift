//
//  CGRect_DominantCornerTests.swift
//  ContextMenuTests
//
//  Created by Ryan Nystrom on 5/28/18.
//  Copyright © 2018 Ryan Nystrom. All rights reserved.
//

import XCTest
@testable import ContextMenu

class CGRect_DominantCornerTests: XCTestCase {

    let rect = CGRect(x: 0, y: 0, width: 100, height: 100)

    func test_whenCornerExists_withTopLeft() {
        XCTAssertEqual(rect.dominantCorner(in: CGRect(x: 11, y: 11, width: 80, height: 80))?.position, .topLeft)
    }

    func test_whenCornerExists_withTopRight() {
        XCTAssertEqual(rect.dominantCorner(in: CGRect(x: 9, y: 11, width: 80, height: 80))?.position, .topRight)
    }

    func test_whenCornerExists_withBottomLeft() {
        XCTAssertEqual(rect.dominantCorner(in: CGRect(x: 11, y: 9, width: 80, height: 80))?.position, .bottomLeft)
    }

    func test_whenCornerExists_withBottomRight() {
        XCTAssertEqual(rect.dominantCorner(in: CGRect(x: 9, y: 9, width: 80, height: 80))?.position, .bottomRight)
    }

    func test_whenCornersEqual_thatReturnsNil() {
        XCTAssertNil(rect.dominantCorner(in: rect))
    }

}
