# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr_length = arr.length
  if(arr_length == 0)
    return 0
  end
  if (arr_length == 1)
    return arr.at(0)
  end
  if(arr_length == 2)
    max_sum = arr.at(0) + arr.at(1)
    return max_sum
  else
    sorted_arr = arr.sort
    max_sum = sorted_arr.at(arr_length.send(:+, -2)) + sorted_arr.at(arr_length.send(:+, -1))
    return max_sum
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.combination(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  str = "Hello, " + name
  return str
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  if(s[0].upcase<'A' || s[0].upcase>'Z')
    return false
  else
    if(/[^AEIOU]/ =~ s[0].upcase)
      return true
    else
      return false
    end
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
	if (s.to_s =~ /\b[01]+\b/ && s.to_i % 4 == 0)
		return true
	else
		return false
	end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$%.2f" % @price
  end
end
