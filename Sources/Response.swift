import Nest


public struct Response : ResponseType {
  public var status: Status
  public var headers: [Header]
  public var body: PayloadType?

  public init(_ status: Status,
                headers: [Header]? = nil,
                contentType: String? = nil,
                body: String? = nil) {
    self.init(status,
              headers: headers,
              contentType: contentType,
              body: body?.byteArray ?? [])
  }
    
  public init<
    ByteSequence: CollectionType
    where ByteSequence.Generator.Element == Byte
    >(_ status: Status,
        headers: [Header]? = nil,
        contentType: String? = nil,
        body: ByteSequence) {
    self.status = status
    self.headers = headers ?? []
    self.body = Stream(body)

    if let contentType = contentType {
        self.headers.append(("Content-Type", contentType))
    }
  }

  public var statusLine:String {
    return status.description
  }

  public subscript(header: String) -> String? {
    get {
      return headers.filter { $0.0 == header }.first?.1
    }
    set {
      if let newValue = newValue {
        headers.append((header, newValue))
      }
    }
  }

  public var contentType: String? {
    get {
      return self["Content-Type"]
    }
    set {
      self["Content-Type"] = newValue
    }
  }

  public var cacheControl: String? {
    get {
      return self["Content-Type"]
    }
    set {
      self["Content-Type"] = newValue
    }
  }
}
