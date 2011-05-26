require 'active_record'
require 'pg'
require 'logger'

module DonorsChoose
  module Data
    
    def self.setup_log(destination=STDOUT)
      puts "A log of the sql queries will be outputted to: #{destination}"

      if destination != STDOUT
        File.delete(destination) if File.exist?(destination)
      end

      log = Logger.new destination
      log.level = Logger::DEBUG
      ActiveRecord::Base.logger = log
    end
  
    # Use this if you're going standalone (aka sans Rails)
    # Probably want to move database.yml.example to database.yml and change the credentials
    def self.connect
      puts "**** SETTING UP Postgresql ****"

      setup_log File.expand_path(File.dirname(__FILE__) + "/postgresql.log")

      postgres_config = YAML.load(File.read('database.yml'))

      # Connect with db
      ActiveRecord::Base.establish_connection(postgres_config)
    end

    Dir.glob("#{File.dirname __FILE__}/data/*.rb").each do |f|
      require f
    end  
  end
end

