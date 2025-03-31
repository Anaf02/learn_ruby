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

  if /[aeiou]/i.match(word_without_punctuation[0])
    word_without_punctuation << "ay"
  elsif /[qu].*/i.match(word_without_punctuation)
    parts = word_without_punctuation.split(/([aeio].*)/)
    word_without_punctuation = parts[1] << parts[0] << "ay"
  else
    parts = word_without_punctuation.split(/([aeiou].*)/)
    word_without_punctuation = parts[1] << parts[0] << "ay"
  end
  prefix_punctuation + word_without_punctuation + suffix_punctuation
end