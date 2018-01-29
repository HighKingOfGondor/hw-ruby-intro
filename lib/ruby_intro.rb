# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.size == 0
    return 0
  end

  i = 0
  sum_total = 0
  while i < arr.size
    sum_total += arr.at(i)
    i += 1
  end
  sum_total
end

def max_2_sum arr
  # YOUR CODE HERE
  # Source: Ruby Docs
  sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  # Source
  # https://stackoverflow.com/questions/19480203/find-if-n-exists-as-a-sum-of-any-2-numbers-in-the-given-array
  if arr.combination(2).find{ |x, y| x + y == n} == nil
    return false
  else
    return true
  end

end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  return (s[0] =~ /[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]/)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # Source
  # https://stackoverflow.com/questions/2339695/how-to-convert-a-string-or-integer-to-binary-in-ruby
  n = 0
  if s =~ /^[0-1]+$/
    n = s.to_i(2) % 4 == 0
    return n
  else
    return false
  end

end

# Part 3

class BookInStock
# YOUR CODE HERE
# Source
# http://rubylearning.com/satishtalim/ruby_exceptions.html
# https://www.quora.com/What-are-setters-and-getters-in-Ruby
# https://stackoverflow.com/questions/17438825/how-can-i-format-a-float-to-a-certain-number-of-decimal-and-integer-digits
  def initialize (isbn, price)
    if isbn.empty? or price <= 0
      raise ArgumentError.new("Invalid input")
    end
    @isbn = isbn
    @price = price
  end

  attr_reader :isbn
  attr_writer :isbn
  attr_reader :price
  attr_writer :price

  def price_as_string
    return sprintf("$%.2f", @price)
  end


end
