def search_insert(nums, target)
    nums.each_with_index do |n, index|
        if n == target || n > target
            return index
        end
    end
    return nums.count
end
