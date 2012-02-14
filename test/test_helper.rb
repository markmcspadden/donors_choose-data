require 'test/unit'

require 'rubygems'

require File.expand_path(File.dirname(__FILE__) + "/../lib/donors_choose-data/data")

postgres_config = { :adapter => "postgresql",
                    :host => "localhost",
                    :username => "postgres",
                    :password => "password",
                    :port => 5432,
                    :database => "donors_choose_data",
                    :schema_search_path => "public" }

DonorsChooseData::Data.connect postgres_config