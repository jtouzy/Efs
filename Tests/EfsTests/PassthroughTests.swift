//
//  PassthroughTests.swift
//  EfsTests
//
//  Created by Jérémy TOUZY on 12/02/2022.
//

@testable import Efs

import XCTest

final class PassthroughTests: XCTestCase {
  typealias EfsPassthrough_O = () -> String
  typealias EfsPassthrough_IA_O = (Int) -> String
  typealias EfsPassthrough_IA_IB_O = (Int, Int) -> String
  typealias EfsPassthrough_IA_IB_IC_O = (Int, Int, Int) -> String
  typealias EfsPassthrough_IA_IB_IC_ID_O = (Int, Int, Int, Int) -> String
  typealias EfsPassthrough_IA_IB_IC_ID_IE_O = (Int, Int, Int, Int, Int) -> String
  typealias EfsPassthrough_IA_IB_IC_ID_IE_IF_O = (Int, Int, Int, Int, Int, Int) -> String
}

extension PassthroughTests {
  func test_passthrough_O() {
    // Given
    let sut: EfsPassthrough_O = Efs.passthrough("Test")
    // When
    let result = sut()
    // Then
    XCTAssertEqual(result, "Test")
  }
  func test_passthrough_IA_O() {
    // Given
    let sut: EfsPassthrough_IA_O = Efs.passthrough("Test")
    // When
    let result = sut(.zero)
    // Then
    XCTAssertEqual(result, "Test")
  }
  func test_passthrough_IA_IB_O() {
    // Given
    let sut: EfsPassthrough_IA_IB_O = Efs.passthrough("Test")
    // When
    let result = sut(.zero, .zero)
    // Then
    XCTAssertEqual(result, "Test")
  }
  func test_passthrough_IA_IB_IC_O() {
    // Given
    let sut: EfsPassthrough_IA_IB_IC_O = Efs.passthrough("Test")
    // When
    let result = sut(.zero, .zero, .zero)
    // Then
    XCTAssertEqual(result, "Test")
  }
  func test_passthrough_IA_IB_IC_ID_O() {
    // Given
    let sut: EfsPassthrough_IA_IB_IC_ID_O = Efs.passthrough("Test")
    // When
    let result = sut(.zero, .zero, .zero, .zero)
    // Then
    XCTAssertEqual(result, "Test")
  }
  func test_passthrough_IA_IB_IC_ID_IE_O() {
    // Given
    let sut: EfsPassthrough_IA_IB_IC_ID_IE_O = Efs.passthrough("Test")
    // When
    let result = sut(.zero, .zero, .zero, .zero, .zero)
    // Then
    XCTAssertEqual(result, "Test")
  }
  func test_passthrough_IA_IB_IC_ID_IE_IF_O() {
    // Given
    let sut: EfsPassthrough_IA_IB_IC_ID_IE_IF_O = Efs.passthrough("Test")
    // When
    let result = sut(.zero, .zero, .zero, .zero, .zero, .zero)
    // Then
    XCTAssertEqual(result, "Test")
  }
}
