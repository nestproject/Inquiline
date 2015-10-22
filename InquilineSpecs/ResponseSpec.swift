import Spectre
import Inquiline


describe("Response") {
  let response = Response(.Ok)

  $0.it("has the status") {
    try equal(response.statusLine, "200 OK")
  }
}
