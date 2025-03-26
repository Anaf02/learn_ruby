# frozen_string_literal: true

def ftoc(degrees_F)
  (degrees_F - 32) * 5.0 / 9.0
end

def ctof(degrees_C)
  (degrees_C * 9.0 / 5.0) + 32
end
