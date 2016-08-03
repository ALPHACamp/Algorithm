def is_ugly(num)
  if num == 0
    return false
  end
  if num == 1
    return true
  end  
  while num % 2  == 0
    num /= 2
  end
  while num % 3 == 0
    num /= 3
  end
  while num % 5 == 0
    num /= 5
  end
  if num == 1 
    return true
  end
  return false
end
