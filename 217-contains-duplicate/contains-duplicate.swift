class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var numSet = Set<Int>()
        for num in nums {
            if numSet.contains(num) {
                return true
            } else {
                numSet.insert(num)
            }
        }
        return false
    }
}