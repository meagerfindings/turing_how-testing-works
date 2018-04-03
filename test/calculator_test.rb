require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/calculator.rb'

class CalculatorTest < Minitest::Test
  def test_calculator_exists
    calc = Calculator.new
    assert_instance_of Calculator, calc
  end

  def test_value_starts_at_zero
    calc = Calculator.new
    assert_equal 0, calc.total
  end

  def test_total_is_actually_total
    calc = Calculator.new(89)
    assert_equal 89, calc.total
  end

  def test_add_actually_adds
    calc = Calculator.new(2)
    calc.add(2)
    assert_equal 4, calc.total
    end

  def test_adding_multiples
    calc = Calculator.new(2)
    calc.add(2)
    calc.add(2)
    calc.add(2)
    assert_equal 8, calc.total
  end

  def test_clear_clears
    calc = Calculator.new(42)
    calc.clear
    assert_equal 0, calc.total
  end

  def test_subtract_subtracts
    calc = Calculator.new(23)
    calc.subtract(20)
    assert_equal 3, calc.total
  end

  def test_negative_numbers
    calc = Calculator.new
    calc.subtract(88)
    assert_equal -88, calc.total
  end

  def test_add_and_subtract
    calc = Calculator.new
    calc.add(2)
    calc.add(3)
    calc.subtract(5)
    calc.add(1)
    assert_equal 1, calc.total
  end

end
