# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: epay_tools 0.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "epay_tools".freeze
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["kaspernj".freeze]
  s.date = "2017-12-02"
  s.description = "Tools to implement the ePay payment gateway".freeze
  s.email = "kaspernj@gmail.com".freeze
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    ".rubocop.yml",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "epay_tools.gemspec",
    "lib/epay_tools.rb",
    "lib/epay_tools/calculator.rb",
    "lib/epay_tools/hash_generator.rb",
    "lib/epay_tools/ordered_parameters.rb",
    "shippable.yml",
    "spec/epay_tools/calculator_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/kaspernj/epay_tools".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.11".freeze
  s.summary = "Tools to implement the ePay payment gateway".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<auto_autoloader>.freeze, [">= 0.0.5"])
      s.add_runtime_dependency(%q<service_pattern>.freeze, [">= 0.0.3"])
      s.add_development_dependency(%q<best_practice_project>.freeze, ["= 0.0.10"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>.freeze, ["= 2.3.7"])
      s.add_development_dependency(%q<rspec>.freeze, ["= 3.7.0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["= 0.51.0"])
    else
      s.add_dependency(%q<auto_autoloader>.freeze, [">= 0.0.5"])
      s.add_dependency(%q<service_pattern>.freeze, [">= 0.0.3"])
      s.add_dependency(%q<best_practice_project>.freeze, ["= 0.0.10"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.0"])
      s.add_dependency(%q<jeweler>.freeze, ["= 2.3.7"])
      s.add_dependency(%q<rspec>.freeze, ["= 3.7.0"])
      s.add_dependency(%q<rubocop>.freeze, ["= 0.51.0"])
    end
  else
    s.add_dependency(%q<auto_autoloader>.freeze, [">= 0.0.5"])
    s.add_dependency(%q<service_pattern>.freeze, [">= 0.0.3"])
    s.add_dependency(%q<best_practice_project>.freeze, ["= 0.0.10"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.0"])
    s.add_dependency(%q<jeweler>.freeze, ["= 2.3.7"])
    s.add_dependency(%q<rspec>.freeze, ["= 3.7.0"])
    s.add_dependency(%q<rubocop>.freeze, ["= 0.51.0"])
  end
end

