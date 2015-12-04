import Spectre
import Inquiline


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
    try equal(request.method, "GET")
  }

  $0.it("has a path") {
    try equal(request.path, "/")
  }

  $0.it("has a description showing the method and path") {
    try equal(request.description, "GET /")
  }

  $0.it("has a subscript header") {
    try equal(request["Content-Type"], "application/json")
  }

  $0.it("has a host header helper") {
    try equal(request.host, "fuller.li")
  }

  $0.it("has a content type header helper") {
    try equal(request.contentType, "application/json")
  }

  $0.it("has a content length header helper") {
    try equal(request.contentLength, 11)
  }

  $0.it("has an accept header helper") {
    try equal(request.accept, "application/json")
  }

  $0.it("has an authorization header helper") {
    try equal(request.authorization, "Authorization: Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ==")
  }
}
