//: Playground - noun: a place where people can play

import UIKit

let firstNode = Node<Int>(value: 10)
let secondNode = Node<Int>(value: 20)
let thirdNode = Node<Int>(value: 30)

firstNode.next = secondNode
secondNode.next = thirdNode


Node<Int>.printNode(firstNode)

var linkedList = LList<Int>()
linkedList.printList()

linkedList.insert(100)
linkedList.insert(200)
linkedList.insert(300)
linkedList.insert(400)

linkedList.printList()

linkedList.remove(400)
linkedList.printList()

linkedList.remove(200)
linkedList.printList()
