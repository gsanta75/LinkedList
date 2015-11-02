import Foundation

public class LList<T: Equatable> {
    var head: Node<T>?
    
    public init(){
        
    }
    
    public func insert(value: T) {
       
        guard let headNode = head else {
            head = Node<T>(value: value)
            return
        }
       
        if headNode.value != nil {
            var lastNode = headNode
            while let nextNode = lastNode.next {
                lastNode = nextNode
            }
            let newNode = Node<T>(value: value)
            lastNode.next = newNode
        }else{
            headNode.value = value
        }
    }
    
    public func remove(value: T) {
        
        guard let headNode = head else { return }
        
        if headNode.value == value {
            head = headNode.next
            return
        }
        
        var currentNode = headNode
        finding: while let nextNode = currentNode.next {
            if nextNode.value == value {
                if let nextInNextNode = nextNode.next {
                    currentNode.next = nextInNextNode
                }else{
                    currentNode.next = nil
                }
                break finding
            }
            currentNode = nextNode
        }
    }
    
    public func printList() {
        guard let theHead = head else {
            print("No element in the LList")
            return
        }
        print("*** Linked List ***")
        Node<T>.printNode(theHead)
    }
}