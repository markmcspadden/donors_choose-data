require File.expand_path(File.dirname(__FILE__) + '/../../test_helper')

class SchoolTest < Test::Unit::TestCase
  
  def setup
    @school = DonorsChoose::Data::School.order(:_schoolid).first
  end
  
  def test_school_setup
    assert_equal "00064eac8b3d1f6dea8a07559922ed58", @school._schoolid
  end
  
  def test_project_setup
    assert_equal "2934f1c8ae5069a41fe601dcf57601be", @school.projects.first._projectid
  end
end