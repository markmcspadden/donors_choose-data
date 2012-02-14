require File.expand_path(File.dirname(__FILE__) + '/../../test_helper')

class TeacherTest < Test::Unit::TestCase
  
  def setup
    @teacher = DonorsChooseData::Data::Teacher.order(:_teacher_acctid).first
  end
  
  def test_teacher_setup
    assert_equal "0000fc70ad0a307d08f88a484dd99cb4", @teacher._teacher_acctid
  end
  
  def test_projects_setup
    assert_equal "dde9ff3a749c46a5d6d6be4f37b0dba6", @teacher.projects.first._projectid
  end
  
  def test_schools_setup
    assert_equal "3a379fd45cb12c92c3c4283e97421111", @teacher.schools.first._schoolid
  end

end