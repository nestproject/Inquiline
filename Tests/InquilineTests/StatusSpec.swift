import Spectre
import Inquiline


func testStatus() {
  describe("Status") {
    $0.it("shows the code) and reason) as the description") {
      try expect(Status.ok.description) == "200 OK"
    }

    $0.it("has continue") {
      try expect(Status.continue.code) == 100
      try expect(Status.continue.reason) == "Continue"
    }

    $0.it("has switching protocols") {
      try expect(Status.switchingProtocols.code) == 101
      try expect(Status.switchingProtocols.reason) == "Switching Protocols"
    }

    $0.it("has ok") {
      try expect(Status.ok.code) == 200
      try expect(Status.ok.reason) == "OK"
    }

    $0.it("has created") {
      try expect(Status.created.code) == 201
      try expect(Status.created.reason) == "Created"
    }

    $0.it("has accepted") {
      try expect(Status.accepted.code) == 202
      try expect(Status.accepted.reason) == "Accepted"
    }

    $0.it("has non authoritive information") {
      try expect(Status.nonAuthoritiveInformation.code) == 203
      try expect(Status.nonAuthoritiveInformation.reason) == "Non-Authoritative Information"
    }

    $0.it("has no content") {
      try expect(Status.noContent.code) == 204
      try expect(Status.noContent.reason) == "No Content"
    }

    $0.it("has not found") {
      try expect(Status.notFound.code) == 404
      try expect(Status.notFound.reason) == "Not Found"
    }

    $0.it("has internal server error") {
      try expect(Status.internalServerError.code) == 500
      try expect(Status.internalServerError.reason) == "Internal Server Error"
    }
  }
}
