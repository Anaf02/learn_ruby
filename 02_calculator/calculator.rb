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