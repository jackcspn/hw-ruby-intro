# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	sumnum = 0			      		# initialize the sum
	arr.each do |i|          		# iterate in the array
		sumnum += i				      # add up every element
	end
	return sumnum			    		# return the sum
end

def max_2_sum arr
	if arr.length == 0
		return 0
	end
	
	if arr.length == 1
		return arr[0]
	end
	
	if arr[0] >= arr[1]			
		max_1 = arr [0]				#initial max_1 to be the largest among first 2 elements
		max_2 = arr [1]				#initial max_2 to be the second largest among first 2 elements
	else
		max_1 = arr [1]
		max_2 = arr [0]
	end
	
	if arr.length > 2 
		(2..arr.length-1).each do |i|         	# iterate in the array
			if arr[i] >= max_1			      # if i is the largest
				max_2 = max_1		      # the original largest one become the second largest
				max_1 = arr[i]			        # assign it to max_1
			elsif arr[i] >= max_2	      # if i is the second largest
				max_2 = arr[i]			        # assign it to max_2
			end
		end
	end
	
	return max_1 + max_2		# add up the largest two number
end


def sum_to_n? arr, n
 if arr.length <= 1          # if the array is empty or has only 1 elment, return false for any n
		return false
	end
	
	(0..arr.length-1).each do |i|          	# iterate in the array
		(i+1..arr.length-1).each do |j|       # iterate another element
			if (arr[i] + arr[j]) == n           # check if the sum is n
				return true
			end
		end
	end
	return false				                    # if there's no sum to be n, return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  	if (('a'..'z') === s[0]) || (('A'...'Z') === s[0])			# check if the first element is a letter
  		return !("AEIOUaeiou".include? s[0])					# check if the first letter is a consonant
  	end
  	
  	return false												# if none of the above requirements is meetet, s do not starts with constant
end

def binary_multiple_of_4? s
  if s.size < 2							# check if s has 0 or 1 element
  	return s == "0"						# if s has 0 or 1 element, the only case that s is a binary mutiple of 4 is is s equals "0"
  end
  
  for i in (0..s.size-1)				# check if s is a binary number
  	if !("01".include? s[i])			# if any element in s is not 0 or 1, then s is not a binary element
  		return false
  	end
  end
  
  return (s[-1]+s[-2]) == "00"		# if the last 2 element in s is "00", s is a binary multiple of 4
  	
end

# Part 3

class BookInStock
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
	
	#price as string
	def price_as_string
		return "$%.2f" % @book_price			#transfer the flaot number to string, and return the price to a specific format
	end
end
