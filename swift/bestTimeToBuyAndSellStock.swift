func maxProfit(prices: [Int]) -> Int {
    var profit = 0
    var hasStock = false
    var b = 0
    for i in 0..<prices.count {
        let currentP = prices[i]
        if i + 1 >= prices.count{
            if hasStock && currentP - b > 0 {
                profit += currentP - b
            }
            break
        }
        let nextP = prices[i+1]
        if hasStock {
            
            let currentProfit = currentP - b
            let futureProfit = nextP - b
            
            if futureProfit < currentProfit {
                // sell stock
                profit += currentProfit
                hasStock = false
            }
        } else {
            if nextP > currentP {
                // buy stock
                b = currentP
                hasStock = true
            }
        }
    }
    return profit
}
