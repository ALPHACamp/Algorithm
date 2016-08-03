def is_anagram(s, t)
  s_map = {}
  t_map = {}
  s.split("").each do |c|
    if s_map[c] != nil
      s_map[c] += 1
    else
      s_map[c] = 1
    end
  end
  t.split("").each do |c|
    if t_map[c] != nil
      t_map[c] += 1
    else
      t_map[c] = 1
    end
  end
  s.split("").each do |c|
    if s_map[c] != t_map[c]
      return false
    end
  end
  t.split("").each do |c|
    if s_map[c] != t_map[c]
      return false
    end
  end
  return true
end
