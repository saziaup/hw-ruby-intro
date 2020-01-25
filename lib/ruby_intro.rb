# When done, submit this entire file to the autograder.

# Part 1

def sum(array)  
    y = 0
    array.each { |x| y+= x } 
    return y
end

def max_2_sum(array)
    y = 0
    sortedarray = array.sort
    newarray = sortedarray.reverse 
  y = newarray[0]+ newarray[1] 
  return y
end

def sum_to_n?(array, n)
  array.combination(2).any? {|x, y| return false if (x + y)==n }
  false
end

# Part 2

def hello(name)
  return "Hello #{name}"
end

def starts_with_consonant? s
 
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
