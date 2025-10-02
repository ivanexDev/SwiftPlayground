//: [Previous](@previous)

//https://leetcode.com/problems/sum-of-two-integers/description/

class Solution {
    func getSum(_ a: Int, _ b: Int) -> Int {
        
        if b == 0 {
            return a
        }
        
        var s = a ^ b
        var c = (a & b) << 1
        
        print(s,c)

        return getSum(s, c)
    
        
    }
}


print(Solution().getSum(3,5))

//: [Next](@next)
