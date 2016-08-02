def max_profit(prices)
   profit = 0
   has_stock = false
   b = 0
   prices.each_with_index do |current_price, index|
       if index + 1 >= prices.count
           if has_stock && current_price - b > 0
               profit += current_price - b
           end
           break
       end
       next_price = prices[index+1]
       if has_stock 
           current_profit = current_price - b
           future_profit = next_price - b
           if future_profit < current_profit
               profit += current_profit
               has_stock = false
           end
       else
           if next_price > current_price
               b = current_price
               has_stock = true
           end
       end
   end
   return profit
end
