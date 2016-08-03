def remove_duplicates(nums)
  if nums.count > 0
    nums.each_with_index do |num, index|
      while index + 1 < nums.count and num == nums[index+1]
        nums.delete_at(index)
      end
    end
  end
  return nums.count
end
