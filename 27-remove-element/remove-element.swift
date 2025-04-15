class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var l = 0
        var r = nums.count - 1

        while l <= r {
            if nums[r] == val {
                r -= 1
            } else if nums[l] != val {
                l += 1
            } else {
                let temp = nums[r]
                nums[r] = nums[l]
                nums[l] = temp
            }
        }
        return l
    }
}