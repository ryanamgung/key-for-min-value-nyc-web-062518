# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  lowest = nil
  key = nil
  if name_hash.length == 0
    return 
  end
  
  name_hash.each do |name, number|
    if lowest == nil
      lowest = number
    end
    if key == nil
      key = name
    end
    if number < lowest
      lowest = number
      key = name
    end
  end
  key
end