# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  if arr.empty? == true
    return 0
  else
    while arr.empty? == false
      total = total + arr.pop
    end
    return total
  end
end

def max_2_sum arr
  if arr.empty? == true
    return 0
  elsif arr.count == 1
    return arr.first
  else
    num1 = arr.shift
    num2 = arr.shift
    while arr.empty? == false
      if arr.first > num1
        if num1 > num2
          num2 = num1
        end
        num1 = arr.shift
      elsif arr.first > num2
        num2 = arr.shift
      else
        arr.shift
      end
    end
    return num1 + num2
  end
end

def sum_to_n? arr, n
  if arr.empty? == true
    return false
  elsif arr.count == 1
    return false
  else
    position = 0
    for i in arr
      arr.delete_at(position)
      for j in arr
        if i + j == n
          return true
        end
      end
      arr.insert(position, i)
      position = position + 1
    end
  end
  return false
end

# Part 2

def hello(name)
  sentence = "Hello, "
  sentence.concat(name)
  return sentence
end

def starts_with_consonant? s
  if s[0] == 'q' || s[0] == 'w' || s[0] == 'r' || s[0] == 't' || s[0] == 'y' || 
     s[0] == 'p' || s[0] == 's' || s[0] == 'd' || s[0] == 'f' || s[0] == 'g' || 
     s[0] == 'h' || s[0] == 'j' || s[0] == 'k' || s[0] == 'l' || s[0] == 'z' || 
     s[0] == 'x' || s[0] == 'c' || s[0] == 'v' || s[0] == 'b' || s[0] == 'n' || 
     s[0] == 'm' || s[0] == 'Q' || s[0] == 'W' || s[0] == 'R' || s[0] == 'T' || 
     s[0] == 'Y' || s[0] == 'P' || s[0] == 'S' || s[0] == 'D' || s[0] == 'F' || 
     s[0] == 'G' || s[0] == 'H' || s[0] == 'J' || s[0] == 'K' || s[0] == 'L' || 
     s[0] == 'Z' || s[0] == 'X' || s[0] == 'C' || s[0] == 'V' || s[0] == 'B' || 
     s[0] == 'N' || s[0] == 'M'
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if s[0] == '0' || s[0] == '1'
    if s.to_i(2) % 4 == 0
      return true
    else
      return false
    end
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize isbn, price
    @isbn = isbn
    @price = price
    if isbn.empty? == true || price <= 0
      raise ArgumentError
    end
  end
  def price_as_string
    amount = '%.2f' % @price
    total = "$"
    total = total.concat(amount.to_s)
    return total
  end
end
