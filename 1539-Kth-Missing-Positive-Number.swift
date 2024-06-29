class Solution {
    func findKthPositive(_ arr: [Int], _ k: Int) -> Int {
        var left = 0
        var right = arr.count - 1

        while(left <= right) {
            var middle = (left + right) / 2
            var value = arr[middle] - (middle + 1)

            if value < k {
                left = middle + 1
            } else {
                right = middle - 1
            }
        }
        
        return left + k
    }
}