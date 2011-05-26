require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class EssayTest < Test::Unit::TestCase
  
  def setup
    @essay = DCData::Essay.first
  end
  
  def test_essay_setup
    assert_equal "2a68c0296a73dcb868b5d35145935462", @essay._projectid
  end
  
  def test_project_setup
    assert_equal "2a68c0296a73dcb868b5d35145935462", @essay.project._projectid
  end

end