# Inquiline

[![Build Status](http://img.shields.io/travis/nestproject/Inquiline/master.svg?style=flat)](https://travis-ci.org/nestproject/Inquiline)

Collection of utilities to aid use of the Nest Web Server Gateway Interface.
Provides a `RequestType` and `ResponseType` implementation.

### Request

Inquiline provides an implementation of `RequestType`.

```swift
let request = Request(method: "GET", path: "/", headers: nil, body: nil)
```

#### RequestType

Inquiline extends RequestType to provide a convinience header subscript and
also header accessors:

```swift
request["Content-Type"]
request.host
request.contentType
request.contentLength
request.accept
request.authorization
request.cacheControl
```

### Response

Inquiline provides an implementation of `ResponseType`.

```swift
let response = Response(.Ok, contentType: "plain/text", body: "Hello World")
```

```http
HTTP/1.1 200 OK
Content-Type: plain/text
Content-Length: 11

Hello World
```

#### Subscripting headers

```swift
response["Cache-Control"] = "no-cache"
```
```swift
response.contentType = "application/json"
response.cacheControl = "no-cache"
```

## Installation

```ruby
pod 'Inquiline'
```

## License

Inquiline is released under the BSD license. See [LICENSE](LICENSE).

