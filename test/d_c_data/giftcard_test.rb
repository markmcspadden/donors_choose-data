require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class GiftcardTest < Test::Unit::TestCase
  
  def setup
    @giftcard = DCData::Giftcard.first
  end
  
  def test_giftcard_setup
    assert_equal "7c2fa2b7b826c6a75a4ec1519f937537", @giftcard._giftcardid
  end

end