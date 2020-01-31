# When done, submit this entire file to the autograder.

# Part 1

def sum array
	if array.empty?
		return 0
	else
		return array.inject(:+)
	end
end

def max_2_sum arr
	if arr.empty?
		return 0
	else
		return arr.sort.last(2).inject(:+)
	end
end

def sum_to_n? arr, n
	arr.combination(2).any? { |x, y| x + y == n }
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  /^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? s
    y = 0
    array = s.chars
    array.map(&:to_i)
    array.each do |x| 
        if x == 1
            y =+ 2^x
        else 
            y =+ 0
        end 

    if y % 4 == 0 
        puts "True"
    else 
        puts "False"
        end 
end

# Part 3

class BookInStock
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