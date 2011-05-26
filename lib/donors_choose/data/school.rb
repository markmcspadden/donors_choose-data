module DonorsChoose
  module Data
    class School < ActiveRecord::Base
      set_table_name :normalized_school
      set_primary_key :_schoolid
  
      has_many :projects, :foreign_key => :_schoolid
      has_many :teachers, :through => :projects
    end
  end
end