class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        let preference = s1.reduce(into: Array(repeating:0, count: 26)) { 
            $0[Int($1.asciiValue! - Character("a").asciiValue!)] += 1
        }

        // create sliding window to check every permutation with limit of length s1
        var s2 = Array(s2)
        var l = 0
        var actual = Array(repeating: 0, count: 26)
        for r in 0..<s2.count {
            if (r - l) >= s1.count {
                actual[Int(s2[l].asciiValue! - Character("a").asciiValue!)] -= 1
                l += 1
            }
            actual[Int(s2[r].asciiValue! - Character("a").asciiValue!)] += 1
        if actual == preference { return true }
        }

        return false
    }
}