# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE

  arr.sort! {|a,b| b <=> a}
  
  return 0 if arr.empty?

  return arr[0]  if arr.count == 1

  return arr[0] + arr[1]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  
  return false if arr.count == 1 || arr.count == 0

  return true if arr.combination(2).find{|x,y| x+y==n} != nil

  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name.to_s
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return true if /[a-z&&[^aeiou]0-9]/i.match(s[0]) != nil
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  
  # Check if s is a valid binary
  return false if /[01]*[^01]+[01]*/.match(s) != nil
  
  # Check if s is a multiple of 4
  return true if /[01]*00$/.match(s) != nil

  return true if /^0$/.match(s) != nil

  return false
  
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError, "Argument must be a string" unless isbn.is_a? String
    raise ArgumentError, "Argument msut be non empty" unless isbn != ''
    raise ArgumentError, "Argument must be a numeric" unless price.is_a? Numeric
    raise ArgumentError, "Argument must be greater than 0" unless price > 0
    @isbn = isbn
    @price = price
  end

  def isbn # getter
    @isbn
  end

  def price # getter
    @price
  end

  def isbn=(isbn) # setter
    @isbn = isbn
  end

  def price=(price) # setter
    @price = price
  end

  def price_as_string
    '$' + "%.2f" % @price
  end 
end
