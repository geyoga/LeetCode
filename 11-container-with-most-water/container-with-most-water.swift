class Solution {
    func maxArea(_ height: [Int]) -> Int {
        // Using Two Pointers to get Time Complexity O(n)
        var l = 0
        var r = height.count - 1
        var res = 0
        
        while l < r {
            let area = (r - l) * min(height[r], height[l])
            res = max(res, area)
            if height[l] < height[r] {
                l += 1
            } else {
                r -= 1
            }
        }

        return res
    }
}