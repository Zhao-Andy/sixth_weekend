require 'pry'
# Use RSpec to test the following exercise! You may wish to wrap the methods below in a class to help facilitate this.

# First, implement the is_prime? method below. It should accept a number as an argument and return
# true if the number is prime and false if it is not. A prime number is a number that is only
# divisible by itself and the number 1.

def prime?(number)
  if number <= 1
    false
  end
  i = 1
  all_true = 0
  while i <= number
    if number % i == 0
      all_true += 1
    end
    i += 1
  end
  if all_true == 2
    true
  else
    false
  end
end

# Second, implement the highest_prime_number_under method below. It should accept a number as
# an argument and return the highest prime number under that number. For example, the
# highest prime number under 10 is 7.

def highest_prime_number_under(number)
  until prime?(number)
    number -= 1
  end
  number if prime?(number)
end
