import Foundation
class Node {
    let val: Int?
    let next: Node?
    
    init() {
        self.val = nil
        self.next = nil
    }
    
    init(value n: Int) {
        self.val = n
        self.next = nil
    }
    
    init(value n: Int, next: Node) {
        self.val = n
        self.next = next
    }
}

class MyLinkedList {
    var head : Node?
    var tail : Node?
    var size = 0 // Keep track of list length for additions at tail

    /** Initialize your data structure here. */
    init() {
        self.head = nil
        self.tail = nil
    }
    
    /** Get the value of the index-th node in the linked list. If the index is invalid, return -1. */
    func get(_ index: Int) -> Int {
        // O(n)
        var current = self.head
        
        for num in 0...index {
            guard current != nil else { // If at some point before the index no current node is reached, the given index was invalid
                return -1
            }
            
            if num == index && current!.val != nil {
                return current!.val!
            } else if current!.next != nil {
                current = current!.next // Don't want to chain here as loop operates on Optional(next)
            }
        }
        return -1
    }
    
    /** Add a node of value val before the first element of the linked list. After the insertion, the new node will be the first node of the linked list. */
    func addAtHead(_ val: Int) {
        // O(1)
        
    }
    
    /** Append a node of value val to the last element of the linked list. */
    func addAtTail(_ val: Int) {
        // O(1)
        
    }
    
    /** Add a node of value val before the index-th node in the linked list. If index equals to the length of linked list, the node will be appended to the end of linked list. If index is greater than the length, the node will not be inserted. */
    func addAtIndex(_ index: Int, _ val: Int) {
        // O(n)
        
    }
    
    /** Delete the index-th node in the linked list, if the index is valid. */
    func deleteAtIndex(_ index: Int) {
        // O(n)
    }
}

/**
 * Your MyLinkedList object will be instantiated and called as such:
 * let obj = MyLinkedList()
 * let ret_1: Int = obj.get(index)
 * obj.addAtHead(val)
 * obj.addAtTail(val)
 * obj.addAtIndex(index, val)
 * obj.deleteAtIndex(index)
 */

