import Nest


public protocol PayloadConvertible {
  func toPayload() -> PayloadType
}


public final class BytesPayload : PayloadType {
  public var bytes: [Int8]

  public init(bytes: [Int8]) {
    self.bytes = bytes
  }

  public func next() -> Int8? {
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
