require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require Student

class StudentTest < Minitest::Test

  def test_it_exists
    student = Student.new
    assert_instance_of Student, student
  end

  # test it has a name
  # test it has a laptop
  # test it has cookies
end