module DonorsChooseData
  module Data
    class Donation < ActiveRecord::Base
      set_table_name :normalized_donation
      set_primary_key :_donationid
  
      belongs_to :project, :foreign_key => :_projectid
    end
  end
end