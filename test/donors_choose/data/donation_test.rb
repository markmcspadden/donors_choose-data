require File.expand_path(File.dirname(__FILE__) + '/../../test_helper')

class DonationTest < Test::Unit::TestCase
  
  def setup
    @donation = DonorsChoose::Data::Donation.order(:_donationid).first
  end
  
  def test_donation_setup
    assert_equal "0000023f507999464aa2b78875b7e5d6", @donation._donationid
  end

  def test_project_setup
    assert_equal "69bf3a609bb4673818e0eebd004ea504", @donation.project._projectid
  end
end