module DCData
  class Resource < ActiveRecord::Base
    set_table_name :normalized_resource
    set_primary_key :_resourceid
  
    belongs_to :project, :foreign_key => :_projectid
  end
end