# frozen_string_literal: true

def measure(n = 1)
  start_time = Time.now
  n.times { yield }
  n > 1 ? (Time.now - start_time)/n : Time.now - start_time
end