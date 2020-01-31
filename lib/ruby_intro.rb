# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    s = 0
    if arr.length == 0
        return 0
    else
        arr.each{ |a|  s+=a}
        return s
    end
end

def max_2_sum arr
    if arr.length == 0
        return 0
    elsif arr.length == 1
        return arr[0]
    else
        arr = arr.sort
        return arr[arr.length - 1] + arr[arr.length - 2]
    end
end

def sum_to_n? arr, n
    if arr.length < 2
       return false
    end 
    arr = arr.sort
    l = 0
    r = arr.length - 1
    loop do
        if arr[l] + arr[r] == n
            return true
        elsif arr[l] + arr[r] < n
            l += 1
        else
            r -= 1
        end
        if l >=r 
            return false
        end
    end
end

# Part 2

def hello(name)
    s = "Hello, #{name}"
    return s
end

def starts_with_consonant? s
    return false if s.empty?
    stemp = s[0]

    return true if stemp=~/[A-Za-z]/ and not stemp=~/[AEIOUaeiou]/
    return false
     
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if not s=~/^[01]+$/

  return true if s=~/^[01]+00$/ or s=~/^[0]+$/

  return false
end

# Part 3

class BookInStock
    attr_reader :isbn
    attr_reader :price
    attr_writer :price
    attr_writer :isbn

    def initialize(isbn1, price1)
        raise ArgumentError if isbn1.empty? || price1 <=0
        @isbn  = isbn1
        @price = price1
    end
    def price_as_string
        return "\$%.2f" % @price
    end

end
