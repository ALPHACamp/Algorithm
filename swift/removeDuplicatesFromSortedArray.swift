func removeDuplicates(inout nums: [Int]) -> Int {
    if nums.count > 0 {
        for i in 0..<nums.count {
            while i + 1 < nums.count && nums[i] == nums[i+1] {
                nums.removeAtIndex(i)
            }
        }
    }

    return nums.count
}
