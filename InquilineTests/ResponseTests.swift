import XCTest
import Inquiline


class ResponseTests : XCTestCase {
  let response = Response(.Ok)

  func testStatus() {
    XCTAssertEqual(response.statusLine, "200 OK")
  }
}
