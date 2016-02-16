import Nest

extension String {
    public var byteArray: [Byte] {
        return Array(utf8)
    }
}
