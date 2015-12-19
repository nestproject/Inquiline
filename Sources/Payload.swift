import Nest


public protocol PayloadConvertible {
  func toPayload() -> PayloadType
}


class BytesPayload : PayloadType {
  var bytes: [Int8]

  init(bytes: [Int8]) {
    self.bytes = bytes
  }

  func next() -> Int8? {
    if bytes.isEmpty {
      return nil
    }

    return bytes.removeFirst()
  }
}


extension String : PayloadConvertible {
  var bytes: [Int8] {
    return utf8.map { Int8($0) }
  }

  public func toPayload() -> PayloadType {
    return BytesPayload(bytes: bytes)
  }
}
