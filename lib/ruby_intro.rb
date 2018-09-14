# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	return arr.inject(0) {|s, i| s+i}		# s should be 0 for an empty array, to avoid have nil in s
end

def max_2_sum arr
	
	if arr.empty?
		return 0
	end
	
	max = arr.max	
	arr.delete_at(arr.index(max))		# find the largest number and delete it
	if !arr.empty?						# check if the array has more than 1 number
		max += arr.max  				# add up the second largest number
	end
	return max
end


def sum_to_n? arr, n
	if arr.empty?
		return false
	end
		
	arr.each do |i|
		j = n - i												# find if there is a j that makes j + i == n
		if arr.include?(j)
			if (i == j ) && arr.count(i) == 1 then next end		# j can not be the same element as i
			return true
		end
	end
	return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  	if (('a'..'z') === s[0]) || (('A'...'Z') === s[0])		# check if the first element is a letter	
  		return !("AEIOUaeiou".include? s[0])				# check if the letter is a consonant
  	end
  	
  	return false												
end

def binary_multiple_of_4? s
  if s.size < 2						# if s has 0 or 1 element, the only case that s is a binary mutiple of 4 is is s equals "0"			
  	return s == "0"						
  end
  
  for i in (0..s.size-1)			# check if s is a binary number		
  	if !("01".include? s[i])			
  		return false
  	end
  end
  
  return (s[-1]+s[-2]) == "00"		# if the last 2 element in s is "00", s is a binary multiple of 4		
  	
end

# Part 3

class BookInStock
	#constructor
	def initialize(i, p)
		@book_isbn = i
		@book_price = p
	    if (@book_isbn == "") || (@book_price <= 0)
			raise ArgumentError
		end
	end
   
	# getter
	def isbn 
		return @book_isbn
	end
	def price
   		return @book_price
	end
	
	#setter
	def isbn=(i)
		@book_isbn = i
	end
	def price=(p)
		@book_price = p
	end
	
	#print the price as string
	def price_as_string
		return "$%.2f" % @book_price			
	end
end
