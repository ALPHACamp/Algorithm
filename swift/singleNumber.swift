func singleNumber(nums: [Int]) -> Int {}
    let sortedNums = nums.sort()
    var result = sortedNums.last!
    for i in 0..<sortedNums.count {
        if i % 2 == 0 && i + 1 < sortedNums.count {
            if sortedNums[i] != sortedNums[i+1] {
                result = sortedNums[i]
                break
            }
        }
    }
    return result
}
