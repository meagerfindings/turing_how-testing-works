require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/student.rb'

class StudentTest < Minitest::Test
  def test_it_exists
    student = Student.new("Meagerfindings")
    assert_instance_of Student, student
  end

  def test_student_has_a_name
    student = Student.new('MeagerFIndings')
    assert_equal 'MeagerFIndings', student.name
  end

  def test_student_can_have_a_different_name
    student = Student.new("Hermione")
    assert_equal "Hermione", student.name
  end

  def test_student_has_a_laptop
    student = Student.new('Tester')
    student.add_laptop('laptop test')
    assert_equal 'laptop test', student.laptop
  end

  def test_student_has_cookies
    student = Student.new('Tester')
    student.add_cookie('funfetti')
    assert_equal 'funfetti', student.cookie
  end
end
