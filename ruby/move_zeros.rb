def move_zeroes(nums)
  num_of_zeroes = 0
  new_array = []
  nums.each do |n|
    if n == 0
      num_of_zeroes += 1
    else
      new_array.push n
    end
  end  
  for i in 0..num_of_zeroes
    new_array.push 0
  end
end
