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

def binary_multiple_of_4? (s)
	return true if s == "0"
	/^[10]*00$/.match(s) != nil
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