class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        guard nums.count > 1 else { return nums }
        var arr = nums

        // Testing using Leetsync
        // using merge sort to get time complexity O(n log n)
        // [1] first step is devide the array into single number
        // [2] second step is compare and merge it with two pointer solution
    
        func mergeSort(_ arr: inout [Int], _ l: Int, _ r: Int) {
            if l == r { return }
            let m = (l + r) / 2
            // [1] devide the array into two section
            mergeSort(&arr, l, m)
            mergeSort(&arr, m + 1, r)
            // [2] combine and compare using two pointer
            merge(&arr, l, m, r)
        }
    
        func merge(_ arr: inout [Int], _ L: Int, _ M: Int, _ R: Int) {
            let left = Array(arr[L...M])
            let right = Array(arr[M+1...R])
            // define the pointer, i for arr, j for leftArr, and k for rightArr
            var i = L, j = 0, k = 0
            while j < left.count && k < right.count {
                if left[j] <= right[k] {
                    arr[i] = left[j]
                    j += 1
                } else {
                    arr[i] = right[k]
                    k += 1
                }
                i += 1
            }
            while j < left.count {
                arr[i] = left[j]
                j += 1
                i += 1
            }
            while k < right.count {
                arr[i] = right[k]
                k += 1
                i += 1
            }
        }
    
        mergeSort(&arr, 0, arr.count - 1)
        return arr
    }
}