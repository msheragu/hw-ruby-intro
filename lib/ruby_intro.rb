# When done, submit this entire file to the autograder.

# Part 1

class Integer
  N_BYTES = [42].pack('i').size
  N_BITS = N_BYTES * 16
  MAX = 2 ** (N_BITS - 2) - 1
  MIN = -MAX - 1
end

def sum arr
  # YOUR CODE HERE
  sum = 0
  if arr.length() == 0
    return 0
  else
    for a in arr do
      sum = sum + a
    end
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  sum = 0
  first = Integer::MIN
  second = Integer::MIN
  if arr.length() == 0
    return 0
  elsif arr.length() == 1
    return arr[0]
  else
    for a in arr do
      curr = a
      if first < curr
        second = first
        first = curr
      elsif second < curr
        second = curr
      end
    end
  end
  sum = first + second
  return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  # h_map = {}
  if arr.length() == 0
    return false
  end
  new_set = Set.new
  for a in arr do
    if new_set.include?(n-a)
      return true
    else
      new_set.add(a)
    end
  end
  # arr.each_with_index do |a,i|
  #   if arr.include?(n - a)
  #     return true if i != arr.find_index(n - a)
  #   else
  #     return false
  #   end
  # end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  c = s.chars.first.downcase
  if c.match(/^[[:alpha:]]$/)
    if c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u'
      return false
    else
      return true
    end
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  if s.length == 1 && s == '0'
    return true
  end
  if /^[0-1]*00$/.match(s)
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.length == 0
      raise ArgumentError
    end
    if price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  attr_reader :isbn
  attr_reader :price
  attr_writer :isbn
  attr_writer :price
  
  def price_as_string
    format("$%.2f", price)
  end
  
end
