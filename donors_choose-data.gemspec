# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "donors_choose-data/version"

Gem::Specification.new do |s|
  s.name        = "donors_choose-data"
  s.version     = DonorsChooseData::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["markmcspadden@gmail.com"]
  s.email       = [""]
  s.homepage    = ""
  s.summary     = %q{Libaries to assist with mining data from donorschoose.org Hacking Education project}
  s.description = %q{}

  s.rubyforge_project = "donors_choose-data"
  
  s.add_dependency 'activerecord', '> 3.0'
  s.add_dependency 'pg'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end