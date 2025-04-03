# frozen_string_literal: true

class Temperature

  attr_reader :in_celsius, :in_fahrenheit

  def initialize(options_hash = {})
    if options_hash.key?(:f)
      @in_fahrenheit = options_hash[:f]
      @in_celsius = self.class.ftoc(@in_fahrenheit)
    elsif options_hash.key?(:c)
      @in_celsius = options_hash[:c]
      @in_fahrenheit = self.class.ctof(@in_celsius)
    end
  end

  def self.ftoc(fahrenheit)
    (fahrenheit - 32) * 5.0 / 9.0
  end

  def self.ctof(celsius)
    (celsius * 9.0 / 5.0) + 32
  end

  def self.from_celsius(celsius)
    Temperature.new(:c => celsius)
  end

  def self.from_fahrenheit(fahrenheit)
    Temperature.new(:f => fahrenheit)
  end
end

class Celsius < Temperature
  def initialize(degrees)
    super({:c => degrees})
  end
end
class Fahrenheit < Temperature
  def initialize(degrees)
    super({:f => degrees})
  end
end