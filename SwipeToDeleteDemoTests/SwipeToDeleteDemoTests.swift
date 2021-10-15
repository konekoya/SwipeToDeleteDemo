//
//  SwipeToDeleteDemoTests.swift
//  SwipeToDeleteDemoTests
//
//  Created by  Joshua on 2021/10/15.
//

import XCTest
@testable import SwipeToDeleteDemo

class SwipeToDeleteDemoTests: XCTestCase {

  func testFeaturePlaylistCellViewModel() {
    let model = FeaturePlaylistCellViewModel(
      name: "Summer vibes",
      artworkURL: nil,
      creatorName: "Joshua"
    )

    XCTAssertEqual(model.name, "Summer vibes")
    XCTAssertEqual(model.creatorName, "Joshua")
    XCTAssertNil(model.artworkURL)
  }

  func testMath() {
    XCTAssertEqual(7 + 5, 12)
    XCTAssertEqual(20 / 2, 10)
  }
}
