def is_power_of_two(n)
  if n == 1
    return true
  end
  if n == 0 
    return false
  end
  while n % 2 == 0
    if n == 2
      return true
    end
    n /= 2
  end
  return false
end
