# frozen_string_literal: true
DOWNCASE = %w[ the a an and in the of ]

class Book

  attr_reader :title

  def title=(title)
    @title = title.split.map.each_with_index do |word, index|
      if index == 0 || !DOWNCASE.include?(word.downcase)
        word.capitalize
      else
        word.downcase
      end
    end.join(" ")
  end

end