import XCTest

@testable import AdventOfCode

final class Day02Tests: XCTestCase {
  let testData = """
    1-3 a: abcde
    1-3 b: cdefg
    2-9 c: ccccccccc
    """

  func testPart1() throws {
    let challenge = Day02(data: testData)
    XCTAssertEqual(String(describing: challenge.part1()), "2")
  }

  func testPart2() throws {
    let challenge = Day02(data: testData)
    XCTAssertEqual(String(describing: challenge.part2()), "1")
  }
}
