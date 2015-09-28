import XCTest
import Inquiline


class RequestTests : XCTestCase {
  let request = Request(method: "GET", path: "/", headers: [
    ("Host", "fuller.li"),
    ("Content-Length", "11"),
    ("Content-Type", "application/json"),
    ("Accept", "application/json"),
    ("Authorization", "Authorization: Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ=="),
    ("Cache-Control", "no-cache"),
  ])

  func testMethod() {
    XCTAssertEqual(request.method, "GET")
  }

  func testPath() {
    XCTAssertEqual(request.path, "/")
  }

  func testDescription() {
    XCTAssertEqual(request.description, "GET /")
  }

  func testSubscriptHeader() {
    XCTAssertEqual(request["Content-Type"], "application/json")
  }

  func testHost() {
    XCTAssertEqual(request.host, "fuller.li")
  }

  func testContentType() {
    XCTAssertEqual(request.contentType, "application/json")
  }

  func testContentLength() {
    XCTAssertEqual(request.contentLength, 11)
  }

  func testAccept() {
    XCTAssertEqual(request.accept, "application/json")
  }

  func testAuthorization() {
    XCTAssertEqual(request.authorization, "Authorization: Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ==")
  }
}
