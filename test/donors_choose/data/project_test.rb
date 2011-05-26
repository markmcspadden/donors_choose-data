require File.expand_path(File.dirname(__FILE__) + '/../../test_helper')

class ProjectTest < Test::Unit::TestCase
  
  def setup
    @project = DonorsChoose::Data::Project.order(:_projectid).first
  end
  
  def test_project_setup
    assert_equal "0000023f507999464aa2b78875b7e5d6", @project._projectid
  end

  def test_donation_setup
    assert_equal "ee519de971e6ec8961f5efa06c6ed191", @project.donations.first._donationid
  end
  
  def test_essay_setup
    assert_equal "0000023f507999464aa2b78875b7e5d6", @project.essay._projectid
  end

  def test_teacher_setup
    assert_equal "5ac258059d9c4fc4db5c1a92b7204db0", @project.teacher._teacher_acctid
  end
  
  def test_resources_setup
    assert_equal "179328a86f77fd5516d122f371c41d32", @project.resources.first._resourceid
  end
  
  def test_school_setup
    assert_equal "c8eafeea02033a1cacd629b410668d55", @project.school._schoolid
  end

end