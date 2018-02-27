require './test/test_helper'
require 'minitest/autorun'
require './lib/employee'

class EmployeeTest < Minitest::Test

  def setup
    @employee_1 = Employee.new("1", "Susan Smith", "Manager", "2016-01-01", "2018-02-20")
    @employee_2 = Employee.new("2", "John Smith", "Engineer", "2016-01-01", "2018-02-20")
  end

  def test_employee_exists
    assert_instance_of Employee, @employee_1
    assert_instance_of Employee, @employee_2
  end

  def test_it_has_employee_id
    assert_equal "1", @employee_1.employee_id
    assert_equal "2", @employee_2.employee_id
  end

  def test_it_has_a_name
    assert_equal "Susan Smith", @employee_1.name
    assert_equal "John Smith", @employee_2.name
  end

  def test_it_has_a_role
    assert_equal "Susan Smith", @employee_1.role
    assert_equal "John Smith", @employee_2.role
  end
  
end
