// 1. Need to sort the people array to be able using two pointers
// 2. Compare the most weight and the least weight to get minimum boats
// Time Complexity O(n log n)

class Solution {
    func numRescueBoats(_ people: [Int], _ limit: Int) -> Int {
        let people = people.sorted()
        var l = 0
        var r = people.count - 1
        var boats = 0

        while l <= r {
            let remainder = limit - people[r]
            r -= 1
            boats += 1
            if l <= r && remainder >= people[l] {
                l += 1
            }
        }

        return boats
    }
}