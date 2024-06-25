import XCTest

@testable import AdventOfCode

final class Day01Tests: XCTestCase {
  let testData = """
    1721
    979
    366
    299
    675
    1456
    """

  func testPart1() throws {
    let challenge = Day01(data: testData)
    XCTAssertEqual(String(describing: challenge.part1()), "514579")
  }

  func testPart2() throws {
    let challenge = Day01(data: testData)
    XCTAssertEqual(String(describing: challenge.part2()), "241861950")
  }
}
