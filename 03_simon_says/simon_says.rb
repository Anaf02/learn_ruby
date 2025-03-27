# frozen_string_literal: true

def echo(message)
  message
end

def shout(message)
  message.upcase
end

def repeat(message, n = 2)
  #["#{message}"] * n * " "
  ([message] * n).join(' ')
end

def start_of_word(word, number_of_letters)
  word.slice(0..number_of_letters - 1)
end

def titleize(title)
  little_words = %w[and the of over]

  title.split.each_with_index.map do |word, index|
    if index == 0 || !little_words.include?(word.downcase)
      word.capitalize
    else
      word.downcase
    end
  end.join(' ')
end

def first_word(message)
  message.split.first
end