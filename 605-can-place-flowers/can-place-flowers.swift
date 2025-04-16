class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var i = 0
        var n = n

        while i < flowerbed.count && n > 0 {
            if isSpaceValid(i, flowerbed) {
                n -= 1
                i += 2
            } else {
                i += 1
            }
        }

        return n == 0
    }

    func isSpaceValid(_ i: Int, _ flowerbed: [Int]) -> Bool {
        guard flowerbed.count > 1 else { return flowerbed.first == 0 }
        if i == 0 {
            return flowerbed[i] == 0 && flowerbed[i+1] == 0
        } else if i == flowerbed.count - 1 {
            return flowerbed[i] == 0 && flowerbed[i-1] == 0
        } else {
            return flowerbed[i] == 0 && flowerbed[i+1] == 0 && flowerbed[i-1] == 0
        }
    }
}