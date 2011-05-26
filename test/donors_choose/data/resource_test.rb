require File.expand_path(File.dirname(__FILE__) + '/../../test_helper')

class ResourceTest < Test::Unit::TestCase
  
  def setup
    @resource = DonorsChoose::Data::Resource.order(:_resourceid).first
  end
  
  def test_resource_setup
    assert_equal "00000170fe6288e0bc4d136e7d9b5ff2", @resource._resourceid
  end
  
  def test_project_setup
    assert_equal "401699836249c08c7a686b33e243b826", @resource.project._projectid
  end

end