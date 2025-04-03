# frozen_string_literal: true
def translate (text)
  text.split.map { |word|
    translate_word(word)
  }.join(" ")
end

def translate_word(word)
  prefix_punctuation = word[/^\W+/] || ""
  suffix_punctuation = word[/\W+$/] || ""
  word_without_punctuation = word[/\A\W*(\w+)\W*\z/, 1] || word

  was_capitalized = word_without_punctuation[0] == word_without_punctuation[0].upcase

  if /[aeiou]/i.match(word_without_punctuation[0])
    word_without_punctuation << "ay"
  else
    parts = word_without_punctuation.split(/(^[^aeiou]{0,}qu)|(^[^aeiou]{1,})/i)
    word_without_punctuation = parts[2] << parts[1] << "ay"
  end

  if was_capitalized
    word_without_punctuation.capitalize!
  end

  prefix_punctuation + word_without_punctuation + suffix_punctuation
end