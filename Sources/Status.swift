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
      return "CONTINUE"
    case .SwitchingProtocols:
      return "SWITCHING PROTOCOLS"
    case .Processing:
      return "PROCESSING"
    case .Ok:
      return "OK"
    case .Created:
      return "CREATED"
    case .Accepted:
      return "ACCEPTED"
    case .NonAuthoritiveInformation:
      return "NON-AUTHORITATIVE INFORMATION"
    case .NoContent:
      return "NO CONTENT"
    case .ResetContent:
      return "RESET CONTENT"
    case .PartialContent:
      return "PARTIAL CONTENT"
    case .MultiStatus:
      return "MULTI STATUS"
    case .AlreadyReported:
      return "ALREADY REPORTED"
    case .IMUsed:
      return "IM USED"
    case .MultipleChoices:
      return "MULTIPLE CHOICES"
    case .MovedPermanently:
      return "MOVED PERMANENTLY"
    case .Found:
      return "FOUND"
    case .SeeOther:
      return "SEE OTHER"
    case .NotModified:
      return "NOT MODIFIED"
    case .UseProxy:
      return "USE PROXY"
    case .Reserved:
      return "RESERVED"
    case .TemporaryRedirect:
      return "TEMPORARY REDIRECT"
    case .PermanentRedirect:
      return "PERMANENT REDIRECT"
    case .BadRequest:
      return "BAD REQUEST"
    case .Unauthorized:
      return "UNAUTHORIZED"
    case .PaymentRequired:
      return "PAYMENT REQUIRED"
    case .Forbidden:
      return "FORBIDDEN"
    case .NotFound:
      return "NOT FOUND"
    case .MethodNotAllowed:
      return "METHOD NOT ALLOWED"
    case .NotAcceptable:
      return "NOT ACCEPTABLE"
    case .ProxyAuthenticationRequired:
      return "PROXY AUTHENTICATION REQUIRED"
    case .RequestTimeout:
      return "REQUEST TIMEOUT"
    case .Conflict:
      return "CONFLICT"
    case .Gone:
      return "GONE"
    case .LengthRequired:
      return "LENGTH REQUIRED"
    case .PreconditionFailed:
      return "PRECONDITION FAILED"
    case .RequestEntityTooLarge:
      return "REQUEST ENTITY TOO LARGE"
    case .RequestURITooLong:
      return "REQUEST-URI TOO LONG"
    case .UnsupportedMediaType:
      return "UNSUPPORTED MEDIA TYPE"
    case .RequestedRangeNotSatisfiable:
      return "REQUESTED RANGE NOT SATISFIABLE"
    case .ExpectationFailed:
      return "EXPECTATION FAILED"
    case .MisdirectedRequest:
      return "MISDIRECTED REQUEST"
    case .UnprocessableEntity:
      return "UNPROCESSABLE ENTITY"
    case .Locked:
      return "LOCKED"
    case .FailedDependency:
      return "FAILED DEPENDENCY"
    case .UpgradeRequired:
      return "UPGRADE REQUIRED"
    case .PreconditionRequired:
      return "PRECONDITION REQUIRED"
    case .TooManyRequests:
      return "TOO MANY REQUESTS"
    case .RequestHeaderFieldsTooLarge:
      return "REQUEST HEADER FIELDS TOO LARGE"
    case .InternalServerError:
      return "INTERNAL SERVER ERROR"
    case .NotImplemented:
      return "NOT IMPLEMENTED"
    case .BadGateway:
      return "BAD GATEWAY"
    case .ServiceUnavailable:
      return "SERVICE UNAVAILABLE"
    case .GatewayTimeout:
      return "GATEWAY TIMEOUT"
    case .HTTPVersionNotSupported:
      return "HTTP VERSION NOT SUPPORTED"
    case .VariantAlsoNegotiates:
      return "VARIANT ALSO NEGOTIATES"
    case .InsufficientStorage:
      return "INSUFFICIENT STORAGE"
    case .LoopDetected:
      return "LOOP DETECTED"
    case .NotExtended:
      return "NOT EXTENDED"
    case .NetworkAuthenticationRequired:
      return "NETWORK AUTHENTICATION REQUIRED"
    }
  }

  public var description:String {
    return "\(rawValue) \(reason)"
  }

  public var code:Int {
    return rawValue
  }
}
