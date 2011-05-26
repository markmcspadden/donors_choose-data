require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class ProjectTest < Test::Unit::TestCase
  
  def setup
    @project = DCData::Project.first
  end
  
  def test_project_setup
    assert_equal "b1ee1388beb00573ef0ab81e2b7243c4", @project._projectid
  end

  def test_donation_setup
    assert_equal "8a88748e91884b5f03bbaa5f4fcfd036", @project.donations.first._donationid
  end
  
  def test_essay_setup
    assert_equal "b1ee1388beb00573ef0ab81e2b7243c4", @project.essay._projectid
  end

  def test_teacher_setup
    assert_equal "590154bc5343aae1f958b043139b3d62", @project.teacher._teacher_acctid
  end
  
  def test_resources_setup
    assert_equal "590154bc5343aae1f958b043139b3d62", @project.resources.first._resourceid
  end
  
  def test_school_setup
    assert_equal "df2afbda9d169825b454772337b797c8", @project.school._schoolid
  end

end