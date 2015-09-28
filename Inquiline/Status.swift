public enum Status : Int, CustomStringConvertible {
  case Continue = 100
  case SwitchingProtocols = 101
  case Ok = 200
  case Created = 201
  case Accepted = 202
  case NonAuthoritiveInformation = 203
  case NoContent = 204
  case ResetContent = 205
  case PartialContent = 206
  case MultipleChoices = 300
  case MovedPermanently = 301
  case Found = 302
  case SeeOther = 303
  case NotModified = 304
  case UseProxy = 305
  case Reserved = 306
  case TemporaryRedirect = 307
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
  case InternalServerError = 500
  case NotImplemented = 501
  case BadGateway = 502
  case ServiceUnavailable = 503
  case GatewayTimeout = 504
  case HTTPVersionNotSupported = 505

  public var reason:String {
    switch self {
    case .Continue:
      return "CONTINUE"
    case .SwitchingProtocols:
      return "SWITCHING PROTOCOLS"
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
    }
  }

  public var description:String {
    return "\(rawValue) \(reason)"
  }

  public var code:Int {
    return rawValue
  }
}
