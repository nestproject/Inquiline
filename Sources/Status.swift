public enum Status : Int, CustomStringConvertible {
  case Continue = 100
  case SwitchingProtocols = 101
  case Processing = 102
  case Ok = 200
  case Created = 201
  case Accepted = 202
  case NonAuthoritiveInformation = 203
  case NoContent = 204
  case ResetContent = 205
  case PartialContent = 206
  case MultiStatus = 207
  case AlreadyReported = 208
  case IMUsed = 226
  case MultipleChoices = 300
  case MovedPermanently = 301
  case Found = 302
  case SeeOther = 303
  case NotModified = 304
  case UseProxy = 305
  case Reserved = 306
  case TemporaryRedirect = 307
  case PermanentRedirect = 308
  case BadRequest = 400
  case Unauthorized = 401
  case PaymentRequired = 402
  case Forbidden = 403
  case NotFound = 404
  case MethodNotAllowed = 405
  case NotAcceptable = 406
  case ProxyAuthenticationRequired = 407
  case RequestTimeout = 408
  case Conflict = 409
  case Gone = 410
  case LengthRequired = 411
  case PreconditionFailed = 412
  case RequestEntityTooLarge = 413
  case RequestURITooLong = 414
  case UnsupportedMediaType = 415
  case RequestedRangeNotSatisfiable = 416
  case ExpectationFailed = 417
  case MisdirectedRequest = 421
  case UnprocessableEntity = 422
  case Locked = 423
  case FailedDependency = 424
  case UpgradeRequired = 426
  case PreconditionRequired = 428
  case TooManyRequests = 429
  case RequestHeaderFieldsTooLarge = 431
  case InternalServerError = 500
  case NotImplemented = 501
  case BadGateway = 502
  case ServiceUnavailable = 503
  case GatewayTimeout = 504
  case HTTPVersionNotSupported = 505
  case VariantAlsoNegotiates = 506
  case InsufficientStorage = 507
  case LoopDetected = 508
  case NotExtended = 510
  case NetworkAuthenticationRequired = 511

  public var reason:String {
    switch self {
    case .Continue:
      return "Continue"
    case .SwitchingProtocols:
      return "Switching Protocols"
    case .Processing:
      return "Processing"
    case .Ok:
      return "OK"
    case .Created:
      return "Created"
    case .Accepted:
      return "Accepted"
    case .NonAuthoritiveInformation:
      return "Non-Authoritative Information"
    case .NoContent:
      return "No Content"
    case .ResetContent:
      return "Reset Content"
    case .PartialContent:
      return "Partial Content"
    case .MultiStatus:
      return "Multi-Status"
    case .AlreadyReported:
      return "Already Reported"
    case .IMUsed:
      return "IM Used"
    case .MultipleChoices:
      return "Multiple Choices"
    case .MovedPermanently:
      return "Moved Permanently"
    case .Found:
      return "Found"
    case .SeeOther:
      return "See Other"
    case .NotModified:
      return "Not Modified"
    case .UseProxy:
      return "Use Proxy"
    case .Reserved:
      return "Reserved"
    case .TemporaryRedirect:
      return "Temporary Redirect"
    case .PermanentRedirect:
      return "Permanent Redirect"
    case .BadRequest:
      return "Bad Request"
    case .Unauthorized:
      return "Unauthorized"
    case .PaymentRequired:
      return "Payment Required"
    case .Forbidden:
      return "Forbidden"
    case .NotFound:
      return "Not Found"
    case .MethodNotAllowed:
      return "Method Not Allowed"
    case .NotAcceptable:
      return "Not Acceptable"
    case .ProxyAuthenticationRequired:
      return "Proxy Authentication Required"
    case .RequestTimeout:
      return "Request Timeout"
    case .Conflict:
      return "Conflict"
    case .Gone:
      return "Gone"
    case .LengthRequired:
      return "Length Required"
    case .PreconditionFailed:
      return "Precondition Failed"
    case .RequestEntityTooLarge:
      return "Request Entity Too Large"
    case .RequestURITooLong:
      return "Request-URI Too Long"
    case .UnsupportedMediaType:
      return "Unsupported Media Type"
    case .RequestedRangeNotSatisfiable:
      return "Requested range not satisfiable"
    case .ExpectationFailed:
      return "Expectation Failed"
    case .MisdirectedRequest:
      return "Misdirected Request"
    case .UnprocessableEntity:
      return "Unprocessable Entity"
    case .Locked:
      return "Locked"
    case .FailedDependency:
      return "Failed Dependency"
    case .UpgradeRequired:
      return "Upgrade Required"
    case .PreconditionRequired:
      return "Precondition Required"
    case .TooManyRequests:
      return "Too Many Requests"
    case .RequestHeaderFieldsTooLarge:
      return "Request Header Fields Too Large"
    case .InternalServerError:
      return "Internal Server Error"
    case .NotImplemented:
      return "Not Implemented"
    case .BadGateway:
      return "Bad Gateway"
    case .ServiceUnavailable:
      return "Service Unavailable"
    case .GatewayTimeout:
      return "Gateway Timeout"
    case .HTTPVersionNotSupported:
      return "HTTP Version Not Supported"
    case .VariantAlsoNegotiates:
      return "Variant Also Negotiates"
    case .InsufficientStorage:
      return "Insufficient Storage"
    case .LoopDetected:
      return "Loop Detected"
    case .NotExtended:
      return "Not Extended"
    case .NetworkAuthenticationRequired:
      return "Network Authentication Required"
    }
  }

  public var description:String {
    return "\(rawValue) \(reason)"
  }

  public var code:Int {
    return rawValue
  }
}
