import Spectre
import Nest
import Inquiline


describe("String Payload Conformance") {
  $0.it("can read a strings bytes") {
    var content = "Hello World".toPayload()

    try equal(content.next(), Int8(72))
    try equal(content.next(), Int8(101))
  }
}
