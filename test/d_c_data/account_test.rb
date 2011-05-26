require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class AccountTest < Test::Unit::TestCase
  
  def setup
    @account = DCData::Account.first
  end
  
  def test_account_setup
    assert_equal "6e1d31eea9f0495d5bcfd0ab9b0b4ac3", @account._acctid
  end
  
  def test_city_setup
    assert_equal 15003, @account.city.id
  end

end