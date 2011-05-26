# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "donors_choose/version"

Gem::Specification.new do |s|
  s.name        = "donors_choose"
  s.version     = DonorsChoose::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Mark McSpadden"]
  s.email       = [""]
  s.homepage    = ""
  s.summary     = %q{Libaries to assist with mining and utilizing donorschoose.org}
  s.description = %q{}

  s.rubyforge_project = "donors_choose"
  
  s.add_dependency 'activerecord', '> 3.0'
  s.add_dependency 'pg'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end