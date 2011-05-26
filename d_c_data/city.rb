module DCData
  class City < ActiveRecord::Base
    set_table_name :normalized_city
  
    has_many :accounts, :foreign_key => :cityid
  end
end