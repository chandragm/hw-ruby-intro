# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.sort!
  arr.last(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.permutation(2).to_a.each do |a|
    return true if a.sum == n
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  /[a-zA-Z]/ =~ s.chr && /[^AEIOUaeiou]/ =~ s.chr 
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  /\A[01]+\z/ =~ s && ((s.to_i(2))% 4 == 0)
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError.new if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    formatted = "%.2f" % price
    "$#{formatted}"
  end
end
