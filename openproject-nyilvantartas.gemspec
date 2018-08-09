# encoding: UTF-8
$:.push File.expand_path("../lib", __FILE__)

require 'open_project/nyilvantartas/version'
# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "openproject-nyilvantartas"
  s.version     = OpenProject::Nyilvantartas::VERSION
  s.authors     = "OpenProject GmbH"
  s.email       = "info@openproject.org"
  s.homepage    = "https://community.openproject.org/projects/nyilvantartas"  # TODO check this URL
  s.summary     = 'OpenProject Nyilvantartas'
  s.description = "Legow gepjarmu nyilvantartas"
  s.license     = "LEGOW" # e.g. "MIT" or "GPLv3"

  s.files = Dir["{app,config,db,lib}/**/*"] + %w(CHANGELOG.md README.md)

  s.add_dependency "rails", "~> 5.0"
end
