lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tepoch/version'

Gem::Specification.new do |s|
  s.name        = 'tepoch'
  s.version     = Tepoch::Version
  s.summary     = "Terminal Epoch"
  s.description = "Easy way to convert and interact with epoch timestamps in the terminal"
  s.authors     = ["Andrew Jorgensen"]
  s.email       = 'andrew@andrewjorgensen.com'
  s.files       += Dir.glob("./lib/**/*.rb")
  s.files       += Dir.glob("./spec/**/*.rb")
  s.homepage    = 'https://github.com/ajorgensen/tepoch'
  s.license     = 'MIT'
  s.executables << 'tepoch'

  s.add_development_dependency('rspec')
  s.add_development_dependency('pry')
end
