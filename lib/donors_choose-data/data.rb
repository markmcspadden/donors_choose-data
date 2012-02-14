require 'active_record'
require 'pg'

module DonorsChooseData
  module Data
      
    # Use this if you're going standalone (aka sans Rails)
    def self.connect(postgres_config = {})
      # Connect with db
      ActiveRecord::Base.establish_connection(postgres_config)
    end

    Dir.glob("#{File.dirname __FILE__}/data/*.rb").each do |f|
      require f
    end  
  end
end

