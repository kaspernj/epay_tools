# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

# stub: epay_tools 0.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "epay_tools".freeze
  s.version = "0.0.0"

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
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "epay_tools.gemspec",
    "lib/epay_tools.rb",
    "lib/epay_tools/hash_calculator_service.rb",
    "lib/epay_tools/ordered_parameters.rb",
    "lib/epay_tools/params_generator_service.rb",
    "spec/epay_tools_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/kaspernj/epay_tools".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.11".freeze
  s.summary = "Tools to implement the ePay payment gateway".freeze

  if s.respond_to? :specification_version
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new("1.2.0")
      s.add_runtime_dependency("auto_autoloader".freeze, [">= 0.0.5"])
      s.add_runtime_dependency("service_pattern".freeze, [">= 0.0.3"])
      s.add_development_dependency("rspec".freeze, ["~> 3.5.0"])
      s.add_development_dependency("rdoc".freeze, ["~> 3.12"])
      s.add_development_dependency("bundler".freeze, ["~> 1.0"])
      s.add_development_dependency("jeweler".freeze, ["= 2.3.7"])
      s.add_development_dependency("simplecov".freeze, [">= 0"])
    else
      s.add_dependency("auto_autoloader".freeze, [">= 0.0.5"])
      s.add_dependency("service_pattern".freeze, [">= 0.0.3"])
      s.add_dependency("rspec".freeze, ["~> 3.5.0"])
      s.add_dependency("rdoc".freeze, ["~> 3.12"])
      s.add_dependency("bundler".freeze, ["~> 1.0"])
      s.add_dependency("jeweler".freeze, ["= 2.3.7"])
      s.add_dependency("simplecov".freeze, [">= 0"])
    end
  else
    s.add_dependency("auto_autoloader".freeze, [">= 0.0.5"])
    s.add_dependency("service_pattern".freeze, [">= 0.0.3"])
    s.add_dependency("rspec".freeze, ["~> 3.5.0"])
    s.add_dependency("rdoc".freeze, ["~> 3.12"])
    s.add_dependency("bundler".freeze, ["~> 1.0"])
    s.add_dependency("jeweler".freeze, ["= 2.3.7"])
    s.add_dependency("simplecov".freeze, [">= 0"])
  end
end
