func isAnagram(s: String, _ t: String) -> Bool {
    let sArray = Array(s.characters)
    let tArray = Array(t.characters)
    var sMap = [Character: Int]()
    var tMap = [Character: Int]()
    for c in sArray {
        if let count = sMap[c] {
            sMap[c] = count + 1
        } else {
            sMap[c] = 1
        }
    }
    for c in tArray {
        if let count = tMap[c] {
            tMap[c] = count + 1
        } else {
            tMap[c] = 1
        }
    }
    for c in sArray {
        if sMap[c] != tMap[c] {
            return false
        }
    }
    for c in tArray {
        if sMap[c] != tMap[c] {
            return false
        }
    }
    return true
}
