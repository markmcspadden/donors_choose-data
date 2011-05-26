require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class SchoolTest < Test::Unit::TestCase
  
  def setup
    @school = DCData::School.first
  end
  
  def test_school_setup
    assert_equal "4effb11a762d152b107678ab4744063b", @school._schoolid
  end
  
  def test_project_setup
    assert_equal "6eb774f01d75b29a3c1971040d9d1b5a", @school.projects.first._projectid
  end
end