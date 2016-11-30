import Spectre
import Inquiline


func testResponse() {
  describe("Response") {
    let response = Response(.ok)

    $0.it("has the status") {
      try expect(response.statusLine) == "200 OK"
    }
  }
}
