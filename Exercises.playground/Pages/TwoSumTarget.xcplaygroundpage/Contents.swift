//: [Previous](@previous)

//https://leetcode.com/problems/two-sum/description/

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
    var dictionaryNumbers: [Int: Int] = [:]
    
    for (index, num) in nums.enumerated() {
        var complement = target - num
        
        if(dictionaryNumbers.keys.contains(complement)){
            
            return [dictionaryNumbers[complement]!, index]
            
        }else{
            dictionaryNumbers[num] = index
        }
        
    }
    
    return []
}


//print(twoSum([2,7,11,15], 9)) // [0,1]
//print(twoSum([3,2,4], 6)) // [1,2]
print(twoSum([3,3], 6)) // [0,1]


//: [Next](@next)
