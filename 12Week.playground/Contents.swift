class Node {
    let val: Int?
    let next: Node?
    
    init() {
        self.val = nil
        self.next = nil
    }
    
    init(_ n: Int) {
        self.val = n
        self.next = nil
    }
    
    init(_ n: Int, _ next: Node) {
        self.val = n
        self.next = next
    }
}

class MyLinkedList {
    let val : Int

    /** Initialize your data structure here. */
    init(_ value: Int) {
        self.val = value
    }
    
    /** Get the value of the index-th node in the linked list. If the index is invalid, return -1. */
    func get(_ index: Int) -> Int {
        return 0
    }
    
    /** Add a node of value val before the first element of the linked list. After the insertion, the new node will be the first node of the linked list. */
    func addAtHead(_ val: Int) {
        
    }
    
    /** Append a node of value val to the last element of the linked list. */
    func addAtTail(_ val: Int) {
        
    }
    
    /** Add a node of value val before the index-th node in the linked list. If index equals to the length of linked list, the node will be appended to the end of linked list. If index is greater than the length, the node will not be inserted. */
    func addAtIndex(_ index: Int, _ val: Int) {
        
    }
    
    /** Delete the index-th node in the linked list, if the index is valid. */
    func deleteAtIndex(_ index: Int) {
        
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
