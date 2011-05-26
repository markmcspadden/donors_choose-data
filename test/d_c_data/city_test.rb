require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class CityTest < Test::Unit::TestCase
  
  def setup
    @city = DCData::City.first
  end
  
  def test_city_setup
    assert_equal 1, @city.id
  end
  
  def test_accounts_setup
    assert_equal "c4127fe826abef12174ca4d0e7288f88", @city.accounts.first._acctid
  end

end