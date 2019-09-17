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
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
