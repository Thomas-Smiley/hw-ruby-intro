# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce(0, :+)
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr.first if arr.length == 1

  arr.sort{ |a, b| b <=> a }.take(2).reduce(:+)
end

def sum_to_n? arr, n
  arr.combination(2).any? {|a, b| a + b == n}
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  s =~ /^[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]/
end

def binary_multiple_of_4? s
  return true if s == "0"
  s =~ /^[10]*00$/
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? or price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    sprintf("$%2.2f", @price)
  end

end
