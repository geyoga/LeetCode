class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let numSet = Set(nums)
        var longest = 0

        for num in numSet {
            if !numSet.contains(num - 1) {
                var streak = 1
                while numSet.contains(num + streak) {
                    streak += 1
                }
                longest = max(streak, longest)
            }
        }
        return longest
    }
}