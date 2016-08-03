def majority_element(nums)
  map = {}
  majority = nums[0]
  nums.each do |n|
    if map[n] != nil
      map[n] += 1
      if map[n] > nums.count / 2
        majority = n
        break
      end 
    else
      map[n] = 1
    end
  end
  return majority
end
