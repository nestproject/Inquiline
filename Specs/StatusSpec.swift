import Spectre
import Inquiline


describe("Status") {
  $0.it("shows the code and reason as the description") {
    try equal(Status.Ok.description, "200 OK")
  }

  $0.it("has continue") {
    try equal(Status.Continue.code, 100)
    try equal(Status.Continue.reason, "Continue")
  }

  $0.it("has switching protocols") {
    try equal(Status.SwitchingProtocols.code, 101)
    try equal(Status.SwitchingProtocols.reason, "Switching Protocols")
  }

  $0.it("has ok") {
    try equal(Status.Ok.code, 200)
    try equal(Status.Ok.reason, "OK")
  }

  $0.it("has created") {
    try equal(Status.Created.code, 201)
    try equal(Status.Created.reason, "Created")
  }

  $0.it("has accepted") {
    try equal(Status.Accepted.code, 202)
    try equal(Status.Accepted.reason, "Accepted")
  }

  $0.it("has non authoritive information") {
    try equal(Status.NonAuthoritiveInformation.code, 203)
    try equal(Status.NonAuthoritiveInformation.reason, "Non-Authoritative Information")
  }

  $0.it("has no content") {
    try equal(Status.NoContent.code, 204)
    try equal(Status.NoContent.reason, "No Content")
  }

  $0.it("has not found") {
    try equal(Status.NotFound.code, 404)
    try equal(Status.NotFound.reason, "Not Found")
  }

  $0.it("has internal server error") {
    try equal(Status.InternalServerError.code, 500)
    try equal(Status.InternalServerError.reason, "Internal Server Error")
  }
}
