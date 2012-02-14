require File.expand_path(File.dirname(__FILE__) + '/../../test_helper')

class GiftcardTest < Test::Unit::TestCase
  
  def setup
    @giftcard = DonorsChooseData::Data::Giftcard.order(:_giftcardid).first
  end
  
  def test_giftcard_setup
    assert_equal "000238b44c187c254752736e53ee46f2", @giftcard._giftcardid
  end

end