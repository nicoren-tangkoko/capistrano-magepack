load File.expand_path("../tasks/bundle_js.rake", __FILE__)

namespace :load do
  task :defaults do
    load "capistrano/capistrano-magepack/defaults.rb"
  end
end
