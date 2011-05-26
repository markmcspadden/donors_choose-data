module DonorsChoose
  module Data
    class Giftcard < ActiveRecord::Base
      set_table_name :normalized_giftcard
      set_primary_key :_giftcardid
    end
  end
end