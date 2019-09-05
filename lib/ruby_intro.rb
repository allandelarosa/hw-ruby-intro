# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	sum = 0
	arr.each { |x| sum += x }
	sum
end

def max_2_sum arr
	return 0 if arr.length == 0
	return arr[0] if arr.length == 1

	sorted = arr.sort
	sorted[sorted.length - 1] + sorted[sorted.length - 2]
end

def sum_to_n? arr, n
	return false if arr.length == 0

	dict = Hash.new()
	arr.each { |x|
		return true if dict[n - x]
		dict[x] = x
	}

	false
end

# Part 2

def hello name
  "Hello, #{name}"
end

def starts_with_consonant? s
 	s =~ /^[qwrtypsdfghjklzxcvbnm].*/i
end

def binary_multiple_of_4? s
  s =~ /^[10]*0?0$/
end

# Part 3

class BookInStock
	def initialize isbn, price
		raise ArgumentError.new "invalid isbn" if isbn == ''
		raise ArgumentError.new "invalid price" unless price > 0
		@isbn = isbn
		@price = price
	end

	attr_accessor :isbn
	attr_accessor :price

	def price_as_string
		format "$%.2f", @price
	end
end
