import XCTest
import Inquiline


class StatusTests : XCTestCase {
  func testDescription() {
    XCTAssertEqual(Status.Ok.description, "200 OK")
  }

  func testContinue() {
    XCTAssertEqual(Status.Continue.code, 100)
    XCTAssertEqual(Status.Continue.reason, "CONTINUE")
  }

  func testSwitchingProtocols() {
    XCTAssertEqual(Status.SwitchingProtocols.code, 101)
    XCTAssertEqual(Status.SwitchingProtocols.reason, "SWITCHING PROTOCOLS")
  }

  func testOk() {
    XCTAssertEqual(Status.Ok.code, 200)
    XCTAssertEqual(Status.Ok.reason, "OK")
  }

  func testCreated() {
    XCTAssertEqual(Status.Created.code, 201)
    XCTAssertEqual(Status.Created.reason, "CREATED")
  }

  func testAccepted() {
    XCTAssertEqual(Status.Accepted.code, 202)
    XCTAssertEqual(Status.Accepted.reason, "ACCEPTED")
  }

  func testNonAuthoritiveInformation() {
    XCTAssertEqual(Status.NonAuthoritiveInformation.code, 203)
    XCTAssertEqual(Status.NonAuthoritiveInformation.reason, "NON-AUTHORITATIVE INFORMATION")
  }

  func testNoContent() {
    XCTAssertEqual(Status.NoContent.code, 204)
    XCTAssertEqual(Status.NoContent.reason, "NO CONTENT")
  }

  func testNotFound() {
    XCTAssertEqual(Status.NotFound.code, 404)
    XCTAssertEqual(Status.NotFound.reason, "NOT FOUND")
  }

  func testInternalServerError() {
    XCTAssertEqual(Status.InternalServerError.code, 500)
    XCTAssertEqual(Status.InternalServerError.reason, "INTERNAL SERVER ERROR")
  }
}
