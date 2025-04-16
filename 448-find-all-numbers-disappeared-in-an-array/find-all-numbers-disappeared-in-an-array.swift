class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var numSet = Array(1...nums.count).reduce(into: Set<Int>()) { $0.insert($1) }
        for num in nums {
            numSet.remove(num)
        }
        return Array(numSet)
    }
}