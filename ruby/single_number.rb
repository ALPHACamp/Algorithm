def single_number(nums)
   nums.sort!
   result = nums.last
   nums.each_with_index do |num, index|
       if index % 2 == 0 and index + 1 < nums.count
           if num != nums[index+1]
               result = num
               break
           end
       end
   end
   return result
end
