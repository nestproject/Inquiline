import Spectre
import Inquiline


func testRequest() {
  describe("Request") {
    let request = Request(method: "GET", path: "/", headers: [
      ("Host", "fuller.li"),
      ("Content-Length", "11"),
      ("Content-Type", "application/json"),
      ("Accept", "application/json"),
      ("Authorization", "Authorization: Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ=="),
      ("Cache-Control", "no-cache"),
    ])

    $0.it("has a method") {
      try expect(request.method) == "GET"
    }

    $0.it("has a path") {
      try expect(request.path) == "/"
    }

    $0.it("has a description showing the method and path") {
      try expect(request.description) == "GET /"
    }

    $0.it("has a subscript header") {
      try expect(request["Content-Type"]) == "application/json"
    }

    $0.it("has a host header helper") {
      try expect(request.host) == "fuller.li"
    }

    $0.it("has a content type header helper") {
      try expect(request.contentType) == "application/json"
    }

    $0.it("has a content length header helper") {
      try expect(request.contentLength) == 11
    }

    $0.it("has an accept header helper") {
      try expect(request.accept) == "application/json"
    }

    $0.it("has an authorization header helper") {
      try expect(request.authorization) == "Authorization: Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ=="
    }
  }
}
