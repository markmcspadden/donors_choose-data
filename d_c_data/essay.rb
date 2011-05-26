module DCData
  class Essay < ActiveRecord::Base
    set_table_name :normalized_essay
    set_primary_key :_projectid
  
    belongs_to :project, :foreign_key => :_projectid
  end
end