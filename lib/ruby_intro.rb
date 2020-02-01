# When done, submit this entire file to the autograder.

# Part 1

def sum array
	if array.empty?
		return 0
	else
		return array.inject(:+)
	end
end

#def sum(array)  
   # y = 0
  #  array.each { |x| y+= x } 
  #  return y
#end

def max_2_sum arr
	if arr.empty?
		return 0
	else
		return arr.sort.last(2).inject(:+)
	end
end

#def max_2_sum(array)
 #   y = 0
  #  sortedarray = array.sort
  #  newarray = sortedarray.reverse 
  #  y = newarray[0]+ newarray[1] 
  # return y
# end

def sum_to_n? arr, n
	arr.combination(2).any? { |x, y| x + y == n }
end

# def sum_to_n?(array, n)
#  array.combination(2).any? {|x, y| return false if (x + y)==n }
#  false
# end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  /^[b-df-hj-np-tv-z]/i.match(s) != nil
end

# def starts_with_consonant?(s)
# s =~ /\A[^aeiou]/i ? "True" : "False"
# end

def binary_multiple_of_4? (s)
	return true if s == "0"
	/^[10]*00$/.match(s) != nil
end

# def binary_multiple_of_4?(s)
  # y = 0
  # array = s.chars
  # array.map(&:to_i)
  #  array.each do |x| 
  #    if x == 1
  #    y =+ 2^x
  #    else 
   #   y =+ 0
  #    end 
  #  end
 # y % 4 == 0 ? "true": "false"
 # end 

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? 
    raise ArgumentError if price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$%.2f" % @price
  end
end

# class BookInStock
    
  #  attr_accessor :isbn
 #   attr_accessor :price

  #  def initialize (isbn, price)
   
  #  @isbn = isbn 
  #  @price = price
  #  end

 #   def price_as_string
 # return "$#{price}.00"
  #  end 

# end