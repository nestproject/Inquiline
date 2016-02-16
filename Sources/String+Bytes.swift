extension String {
    public var byteArray: [Int8] {
        var bytes: [Int8] = []
        let length = characters.count
        withCString { pointer in
            let buffer = UnsafeBufferPointer(
                start: pointer,
                count: length
            )
            bytes = Array(buffer)
        }
        return bytes
    }
}
