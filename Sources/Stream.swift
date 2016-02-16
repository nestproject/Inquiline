import Nest

public struct Stream: PayloadType {
    
    public let generator: Void -> Int8?
    
    public init<
        ByteSequence: CollectionType
        where
        ByteSequence.Generator.Element == Int8
        >(_ sequence: ByteSequence) {
        
        // Wrapping Indexing generator because can't set to concrete type
        var indexing = sequence.generate()
        generator = {  indexing.next() }
    }
    
    public func next() -> Int8? {
        return generator()
    }
}
