# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "liquidr/version"

Gem::Specification.new do |s|
  s.name        = "liquidr"
  s.version     = Liquidr::VERSION
  s.authors     = ["Cyril Picard"]
  s.email       = ["Cyril@picard.ch"]
  s.homepage    = ""
  s.summary     = %q{ Adds some tag to the Liquid markup engine. }
  s.description = %q{ Adds some tag to the Liquid markup engine. }

  s.rubyforge_project = "liquidr"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency('liquid')
end
