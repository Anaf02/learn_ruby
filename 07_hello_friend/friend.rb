# frozen_string_literal: true

class Friend

  def greeting(who = nil)
    who ? "Hello, #{who}!" : "Hello!"
  end

end