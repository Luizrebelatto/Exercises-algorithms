class Solution {
    func mySqrt(_ x: Int) -> Int {
        if x < 2 {
            return x
        }

        var left = 1
        var right = x
        var result = 0

        while left <= right {
            let middle = left + (right - left) / 2

            if middle * middle <= x {
                result = middle
                left = middle + 1
            } else {
                right = middle - 1
            }
        }

        return result
    }
}