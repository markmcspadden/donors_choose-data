require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class DonationTest < Test::Unit::TestCase
  
  def setup
    @donation = DCData::Donation.first
  end
  
  def test_donation_setup
    assert_equal "798b59bfda2a7dd69a1a02f6bb007969", @donation._donationid
  end

  def test_project_setup
    assert_equal "364c61a92927942f7241ecdc1dcc1c04", @donation.project._projectid
  end
end