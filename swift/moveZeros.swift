func moveZeroes(inout nums: [Int]) {
    var numOfZeros = 0
    var newArray = [Int]()
    for n in nums {
        if n == 0 {
            numOfZeros += 1
        } else {
            newArray.append(n)
        }
    }
    for _ in 0...numOfZeros {
        newArray.append(0)
    }
    nums = newArray
}
