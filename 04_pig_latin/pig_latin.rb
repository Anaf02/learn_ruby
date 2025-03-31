# frozen_string_literal: true
PHONEMES = %w[sch qu]

def translate (text)
  text.split.map { |word|
    translate_word(word)
  }.join(" ")
end

def translate_word(word)
  if /[aeiou]/i.match(word[0])
    word << "ay"
  elsif /[qu].*/i.match(word)
    parts = word.split(/([aeio].*)/)
    parts[1] << parts[0] << "ay"
  else
    parts = word.split(/([aeiou].*)/)
    parts[1] << parts[0] << "ay"
  end
end
