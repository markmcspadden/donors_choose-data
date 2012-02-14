require File.expand_path(File.dirname(__FILE__) + '/../../test_helper')

class EssayTest < Test::Unit::TestCase
  
  def setup
    @essay = DonorsChooseData::Data::Essay.order(:_projectid).first
  end
  
  def test_essay_setup
    assert_equal "0000023f507999464aa2b78875b7e5d6", @essay._projectid
  end
  
  def test_project_setup
    assert_equal "0000023f507999464aa2b78875b7e5d6", @essay.project._projectid
  end

end