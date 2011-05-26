module DCData
  class Account < ActiveRecord::Base
    set_table_name :normalized_account
    set_primary_key :_acctid
  
    belongs_to :city, :foreign_key => :cityid
  end
end