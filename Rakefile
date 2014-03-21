require 'rake'
require 'tepoch/version'

desc "Builds and installs a local copy of tepoch"
task :install do 
  gem_name = "tepoch-#{Tepoch::Version}.gem"

  system %Q{gem build tepoch.gemspec}
  system %Q{gem install #{gem_name}}
  system %Q{rm #{gem_name}}
end
