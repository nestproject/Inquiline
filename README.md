# Inquiline

Collection of utilities to aid use of the Nest Web Server Gateway Interface.

## Installation

```ruby
pod 'Inquiline'
```

## Usage

Inquiline includes a set of type aliases to refer to types easier.

```swift
func application(environ:Environ) -> Response {
  return ("200 OK", [:], "Hello World")
}
```

## License

Inquiline is released under the BSD license. See [LICENSE](LICENSE).
