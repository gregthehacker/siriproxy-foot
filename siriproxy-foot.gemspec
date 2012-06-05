# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "siriproxy-foot"
  s.version     = "0.1" 
  s.authors     = ["cedbv&&&gregthehacker"]
  s.email       = ["gregthehacker.me.com"]
  s.homepage    = "http://siri.0rg.fr"
  s.summary     = %q{Foot}
  s.description = %q{Football}

  s.rubyforge_project = "siriproxy-foot"

  s.files         = `git ls-files 2> /dev/null`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/* 2> /dev/null`.split("\n")
  s.executables   = `git ls-files -- bin/* 2> /dev/null`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
  s.add_runtime_dependency "httparty"
  s.add_runtime_dependency "nokogiri"
end
