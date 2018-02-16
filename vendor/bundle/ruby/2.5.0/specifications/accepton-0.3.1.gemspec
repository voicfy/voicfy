# -*- encoding: utf-8 -*-
# stub: accepton 0.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "accepton".freeze
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["AcceptOn".freeze]
  s.date = "2016-01-11"
  s.description = "AcceptOn allows you to get paid in your customer's preferred method".freeze
  s.email = ["developers@accepton.com".freeze]
  s.homepage = "https://developers.accepton.com".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.3".freeze
  s.summary = "AcceptOn allows you to get paid in your customer's preferred method".freeze

  s.installed_by_version = "2.7.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hashie>.freeze, ["~> 3.4"])
      s.add_runtime_dependency(%q<http>.freeze, ["~> 0.6.4"])
      s.add_runtime_dependency(%q<addressable>.freeze, ["~> 2.4"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.8"])
    else
      s.add_dependency(%q<hashie>.freeze, ["~> 3.4"])
      s.add_dependency(%q<http>.freeze, ["~> 0.6.4"])
      s.add_dependency(%q<addressable>.freeze, ["~> 2.4"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.8"])
    end
  else
    s.add_dependency(%q<hashie>.freeze, ["~> 3.4"])
    s.add_dependency(%q<http>.freeze, ["~> 0.6.4"])
    s.add_dependency(%q<addressable>.freeze, ["~> 2.4"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.8"])
  end
end
