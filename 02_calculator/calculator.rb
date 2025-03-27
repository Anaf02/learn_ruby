# frozen_string_literal: true

def add(number1, number2)
  number1 + number2
end

def subtract(number1, number2)
  number1 - number2
end

def sum(numbers)
  result = 0
  numbers.each { |number|
    result = add(result, number)
  }
  result
end

def multiply(numbers)
  result = 1
  numbers.each { |number|
    result *= number
  }
  result
end

def power(number, power)
  number ** power
end

def factorial(number)
  if number == 0 || number == 1
     1
  else
    number * factorial(number - 1)
  end
end