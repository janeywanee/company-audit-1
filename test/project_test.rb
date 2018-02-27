require './test/test_helper'
require 'minitest/autorun'
require './lib/project'

class ProjectTest < Minitest::Test

  def setup
    @project_1 = Project.new("1", "Widgets", "2016-01-01", "2016-06-30")
    @project_2 = Project.new("2", "More Widgets", "2016-12-01", "2017-07-21")
    @project_3 = Project.new("3", "Acme Project", "2017-04-01", "2018-01-28")
  end

  def test_project_exists
    assert_instance_of Project, @project_1
    assert_instance_of Project, @project_2
    assert_instance_of Project, @project_3
  end

  def test_it_has_project_id
    assert_equal "1", @employee_1.project_id
    assert_equal "2", @employee_2.project_id
    assert_equal "3", @employee_3.project_id
  end


end
