# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(hash)
  i = 0
  min = 0
  min_key = nil
  hash.each do |key, value|
    unless i > 0
      min = value
      min_key = key
    end
    if min > value
      min = value
      min_key = key
    end
    i += 1
  end
  min_key
end

key_for_min_value({:blake => 500, :ashley => 2, :adam => 1})

key_for_min_value({:blake => 10, :ashley => 50, :adam => 17})