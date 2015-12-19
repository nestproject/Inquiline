import Spectre
import Nest
import Inquiline


describe("String Payload Conformance") {
  $0.it("can read a strings bytes") {
    var content = "Hello World".toPayload()

    let bytes = content.next()!
    try equal(bytes[0], UInt8(72))
    try equal(bytes[1], UInt8(101))
  }
}
