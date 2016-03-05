import Nest


public protocol PayloadConvertible {
  func toPayload() -> PayloadType
}


class BytesPayload : PayloadType {
  var bytes: [UInt8]?

  init(bytes: [UInt8]) {
    self.bytes = bytes
  }

  func next() -> [UInt8]? {
    if let bytes = bytes {
      self.bytes = nil
      return bytes
    }

    return nil
  }
}


extension String : PayloadConvertible {
  var bytes: [UInt8] {
    return utf8.map { UInt8($0) }
  }

  public func toPayload() -> PayloadType {
    return BytesPayload(bytes: bytes)
  }
}
