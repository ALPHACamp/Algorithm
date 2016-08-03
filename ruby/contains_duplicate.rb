def contains_duplicate(nums)
  nums.sort!
  nums.each_with_index do |n, i|
    if i + 1 < nums.count and n == nums[i+1]
      return true
    end
  end
  return false
end
