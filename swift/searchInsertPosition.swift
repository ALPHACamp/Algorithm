func searchInsert(nums: [Int], _ target: Int) -> Int {
    for (i, n) in nums.enumerate() {
        if n == target || n > target {
            return i
        }
    }
    return nums.count
}
