func isPowerOfTwo(n: Int) -> Bool {
    if n == 1 {
        return true
    }
    if n < 0 {
        return false
    }
    var i = n
    while i % 2 == 0 {
        if i == 2 {
            return true
        }
        i /= 2
    }
    return false
}
