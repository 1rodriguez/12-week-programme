import Foundation

class Node {
    let val: Int?
    var next: Node? // Singly Linked
    
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
        guard self.head != nil else {
            self.head = Node(value: val)
            self.tail = self.head // No head implies one-node list
            
            self.size += 1
            return
        }
        
        let newHead = Node(value: val, next: self.head!)
        self.head = newHead
        
        self.size += 1
    }
    
    /** Append a node of value val to the last element of the linked list. */
    func addAtTail(_ val: Int) {
        // O(1)
        guard self.tail != nil else {
            self.tail = Node(value: val)
            self.head = self.tail
            
            self.size += 1
            return
        }
        
        let newTail = Node(value: val)
        self.tail!.next = newTail
    }
    
    /** Add a node of value val before the index-th node in the linked list. If index equals to the length of linked list, the node will be appended to the end of linked list. If index is greater than the length, the node will not be inserted. */
    func addAtIndex(_ index: Int, _ val: Int) { // FIXME: adjust head and tail if necessary
        // O(n)
        var current = self.head
        var penult: Node? = nil
        
        if index == 0 {
            // Add node to start of linked list, can just call addAtHead
            addAtHead(val)
            return
        }
        
        for num in 0...index {
            guard current != nil else { // Invalid, longer than list iself
                return
            }
            
            // Some code
            if num == index - 1 {
                penult = current
            } else if num == index {
                let inserted = Node(value: val)
                
                inserted.next = penult!.next
                penult!.next = inserted
                
                if index == self.size {
                    self.tail = inserted
                }
                
                self.size += 1
            }
            
            if current!.next != nil {
                current = current!.next
            }
            
        }
        
    }
    
    /** Delete the index-th node in the linked list, if the index is valid. */
    func deleteAtIndex(_ index: Int) {
        // O(n)
        var current = self.head
        var penult: Node? = nil // Store reference to penultimate node
        var tailDeletion = false // Reassign tail if node deletion occurs at end of list
        
        
        if index == 0 && index == size - 1 {
            self.head = self.head!.next
            self.tail = self.head
            return
        }
        if index == 0 {
            self.head = self.head!.next
        }
        if index == size - 1 { tailDeletion = true }
        
        
        for num in 0...index {
            guard current != nil else { return }
            
            if num == index - 1 {
                penult = current
                
                if tailDeletion { self.tail = penult }
            } else if num == index {
                penult!.next = current!.next
                self.size -= 1
            }
            
            if current!.next != nil {
                current = current!.next
            }
        }
    }
    
    func display() {
        var current: Node? = self.head
        var console: [Int] = []
        
        while current != nil {
            console.append(current!.val!) // Value guaranteed as long as node is non-nil (in this problem)
            
            current = current!.next
        }
        
        print(console)
    }
}

/**
 * Your MyLinkedList object will be instantiated and called as such:

 */

let obj = MyLinkedList()

obj.addAtHead(7)
obj.addAtHead(2)
obj.addAtHead(1) // 1, 2, 7
obj.addAtIndex(3, 0) // 1, 2, 7, 0
obj.deleteAtIndex(2) // 1, 2, 0
obj.addAtHead(6)
obj.addAtTail(4) // 6, 1, 2, 0, 4 missing 4
obj.display()
print(obj.get(4))
obj.addAtHead(4)
obj.addAtIndex(5, 0)
obj.addAtHead(6)
//
obj.display()



