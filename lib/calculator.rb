class Calculator
  attr_reader :total

  def initialize(number = 0)
    @total = number
  end

  def add(number)
    @total += number
  end

  def clear
    @total = 0
  end

  def subtract(number)
    @total -= number
  end

end