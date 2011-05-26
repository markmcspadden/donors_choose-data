require File.expand_path(File.dirname(__FILE__) + '/../../test_helper')

class AccountTest < Test::Unit::TestCase
  
  def setup
    @account = DonorsChoose::Data::Account.order(:_acctid).first
  end
  
  def test_account_setup
    assert_equal "00008481214e948f070337066f875fb2", @account._acctid
  end
  
  def test_city_setup
    assert_equal 4474, @account.city.id
  end

end