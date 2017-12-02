require "rubygems"
require "bundler"
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  warn e.message
  warn "Run `bundle install` to install missing gems"
  exit e.status_code
end
require "rake"

require "jeweler"
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://guides.rubygems.org/specification-reference/ for more options
  gem.name = "epay_tools"
  gem.homepage = "http://github.com/kaspernj/epay_tools"
  gem.license = "MIT"
  gem.summary = %(Tools to implement the ePay payment gateway)
  gem.description = %(Tools to implement the ePay payment gateway)
  gem.email = "kaspernj@gmail.com"
  gem.authors = ["kaspernj"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require "rspec/core"
require "rspec/core/rake_task"
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList["spec/**/*_spec.rb"]
end

task default: :spec

require "best_practice_project"
BestPracticeProject.load_tasks
