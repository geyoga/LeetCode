class Solution {
    func maxNumberOfBalloons(_ text: String) -> Int {
        let balloonMap = "balloon".reduce(into: [:]) { $0[$1, default:0] += 1 }
        let textMap = text.reduce(into: [:]) { $0[$1, default: 0] += 1 }
        var res = text.count

        for (key, value) in balloonMap {
            if let textValue = textMap[key] {
                res = min(res, textValue / value)
            } else {
                return 0
            }
        }

        return res
    }
}