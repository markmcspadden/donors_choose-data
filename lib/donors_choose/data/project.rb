module DonorsChoose
  module Data
    class Project < ActiveRecord::Base
      set_table_name :normalized_project
      set_primary_key :_projectid
  
      belongs_to :school, :foreign_key => :_schoolid
      belongs_to :teacher, :foreign_key => :_teacher_acctid
  
      has_one :essay, :foreign_key => :_projectid
  
      has_many :donations, :foreign_key => :_projectid
      has_many :resources, :foreign_key => :_projectid
    end
  end
end