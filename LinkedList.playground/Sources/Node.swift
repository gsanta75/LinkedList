import Foundation

public class Node<T: Equatable>: CustomStringConvertible {
    var value: T?
    public var next: Node<T>?
    
    public init(value: T?, next: Node<T>? = nil){
        self.value = value
        self.next = next
    }
    
    public convenience init() {
        self.init(value: nil, next: nil)
    }
    
    public var description: String {
        guard let theValue = value else { return "no value" }
        return "The value is \(theValue)"
    }
}

extension Node {
    public static func printNode(node: Node<T>?){
        guard let theNode = node else {
            print("No Node to print")
            return
        }
        
        var currentNode = theNode
        print(currentNode)
        while let nextNode = currentNode.next {
            print(nextNode)
            currentNode = nextNode
        }
    }
}