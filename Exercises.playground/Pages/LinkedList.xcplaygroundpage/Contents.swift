//: [Previous](@previous)

//https://leetcode.com/problems/add-two-numbers/description/

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next;
    }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode {
        
        var list1: ListNode? = l1
        var list2: ListNode? = l2
        
        var newList: ListNode? = ListNode(0)
        var current = newList
        var carry = 0
        
        while list1 != nil || list2 != nil || carry != 0 {

            var v1 = list1?.val ?? 0
            var v2 = list2?.val ?? 0
            
            var sum = v1 + v2 + carry
            carry = sum / 10
            
            current?.next = ListNode(sum % 10)
            current = current?.next
       
            list1 = list1?.next
            list2 = list2?.next
            
        }
        
        return newList!.next!
        
    }
}


let l1 = ListNode(2)
l1.next = ListNode(4)
l1.next?.next = ListNode(3)

let l2 = ListNode(5)
l2.next = ListNode(6)
l2.next?.next = ListNode(4)

let result = Solution().addTwoNumbers(l1, l2)

print(result.val)
print(result.next?.val)
print(result.next?.next?.val)







//: [Next](@next)
