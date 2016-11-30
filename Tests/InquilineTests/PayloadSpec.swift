import Spectre
import Nest
import Inquiline


func testPayload() {
  describe("String Payload Conformance") {
    $0.it("can read a strings bytes") {
      var content = "Hello World".toPayload()

      let bytes = content.next()!
      try expect(bytes[0]) == UInt8(72)
      try expect(bytes[1]) == UInt8(101)
    }
  }
}
