module DonorsChooseData
  module Data
    class Teacher < ActiveRecord::Base
      set_table_name :normalized_teacher
      set_primary_key :_teacher_acctid
  
      has_many :projects, :foreign_key => :_teacher_acctid
      has_many :schools, :through => :projects
    end
  end
end