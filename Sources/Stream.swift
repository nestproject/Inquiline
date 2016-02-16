import Nest

public struct Stream: PayloadType {
    
    public let generator: Void -> Byte?
    
    public init<
        ByteSequence: CollectionType
        where
        ByteSequence.Generator.Element == Byte
        >(_ sequence: ByteSequence) {
        
        // Wrapping Indexing generator because can't set to concrete type
        var indexing = sequence.generate()
        generator = {  indexing.next() }
    }
    
    public func next() -> Byte? {
        return generator()
    }
}
