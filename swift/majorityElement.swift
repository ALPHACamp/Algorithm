func majorityElement(nums: [Int]) -> Int {
    var map = [Int:Int]()
    var majority = nums[0]
    for n in nums {
        if let count = map[n] {
            map[n] = count + 1
            if map[n] > nums.count/2 {
                majority = n
                break
            }
        } else {
            map[n] = 1
        }
    }
    return majority
}
