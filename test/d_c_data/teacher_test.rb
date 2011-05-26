require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class TeacherTest < Test::Unit::TestCase
  
  def setup
    @teacher = DCData::Teacher.first
  end
  
  def test_teacher_setup
    assert_equal "d04fe28078bb087996351d7a6d0c20d1", @teacher._teacher_acctid
  end
  
  def test_projects_setup
    assert_equal "f9065c14b96ae492fb62924acb115521", @teacher.projects.first._projectid
  end
  
  def test_schools_setup
    assert_equal "39ddbff0638271cd2eb7793af1c91237", @teacher.schools.first._schoolid
  end

end