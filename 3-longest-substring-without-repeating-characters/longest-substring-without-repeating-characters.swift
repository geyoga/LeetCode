class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        // Using Sliding Window to get Time Complexity O(n)
        let s = Array(s)
        var charSet = Set<Character>()
        var l = 0
        var res = 0
    
        for r in s.indices {
            while charSet.contains(s[r]) {
                charSet.remove(s[l])
                l += 1
            }
            charSet.insert(s[r])
            res = max(res, r - l + 1)
        }

        return res
    }
}