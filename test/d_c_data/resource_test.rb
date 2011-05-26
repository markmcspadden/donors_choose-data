require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class ResourceTest < Test::Unit::TestCase
  
  def setup
    @resource = DCData::Resource.first
  end
  
  def test_resource_setup
    assert_equal "d44b79386ab2353c9409736c3994e83f", @resource._resourceid
  end
  
  def test_project_setup
    assert_equal "2a68c0296a73dcb868b5d35145935462", @resource.project._projectid
  end

end