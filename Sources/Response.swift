import Nest


public struct Response : ResponseType {
  public var status: Status
  public var headers: [Header]
  public var body: [UInt8]?

  public init(_ status: Status,
                headers: [Header]? = nil,
                contentType: String? = nil,
                body: String? = nil) {
    self.init(status,
              headers: headers,
              contentType: contentType,
              body: body?.utf8)
  }
    
  public init<
    ByteSequence: CollectionType
    where ByteSequence.Generator.Element == UInt8
    >(_ status: Status,
        headers: [Header]? = nil,
        contentType: String? = nil,
        body: ByteSequence?) {
    self.status = status
    self.headers = headers ?? []
    
    if let _body = body {
        self.body = Array(_body)
    } else {
        self.body = nil
    }
    
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
