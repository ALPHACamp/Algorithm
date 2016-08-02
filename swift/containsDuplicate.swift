func containsDuplicate(nums: [Int]) -> Bool {
    let s = Set(nums)
    return s.count < nums.count
}
