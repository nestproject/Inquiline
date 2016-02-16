import Nest

extension String {
    public var byteArray: [Byte] {
        return utf8.map { Byte($0) }
    }
}
