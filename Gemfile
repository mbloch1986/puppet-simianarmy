source ENV['GEM_SOURCE'] || "https://rubygems.org"

def location_for(place, fake_version = nil)
  if place =~ /^(git[:@][^#]*)#(.*)/
    [fake_version, { :git => $1, :branch => $2, :require => false }].compact
  elsif place =~ /^file:\/\/(.*)/
    ['>= 0', { :path => File.expand_path($1), :require => false }]
  else
    [place, { :require => false }]
  end
end

group :test do
  gem 'puppetlabs_spec_helper',                                     :require => false
  gem 'rspec-puppet',                                               :require => false, :git => 'https://github.com/rodjek/rspec-puppet.git'
  gem 'rspec-puppet-facts',                                         :require => false
  gem 'rspec-puppet-utils',                                         :require => false
  gem 'puppet-lint',                                                :require => false
  gem 'puppet-lint-param-docs',                                     :require => false
  gem 'puppet-lint-strict_indent-check',                            :require => false
  gem 'puppet-lint-absolute_classname-check',                       :require => false
  gem 'puppet-lint-leading_zero-check',                             :require => false
  gem 'puppet-lint-trailing_comma-check',                           :require => false
  gem 'puppet-lint-version_comparison-check',                       :require => false
  gem 'puppet-lint-classes_and_types_beginning_with_digits-check',  :require => false
  gem 'puppet-lint-unquoted_string-check',                          :require => false
  gem 'puppet-lint-variable_contains_upcase',                       :require => false
  gem 'puppet-lint-resource_reference_syntax',                      :require => false
  gem 'puppet-lint-legacy_facts-check',                             :require => false
  gem 'puppet-lint-duplicate_class_parameters-check',               :require => false
  gem 'metadata-json-lint',                                         :require => false
  gem 'semantic_puppet',                                            :require => false
  gem 'puppet-blacksmith',                                          :require => false
  gem 'voxpupuli-release',                                          :require => false, :git => 'https://github.com/voxpupuli/voxpupuli-release-gem.git'
  gem 'json_pure', '<= 2.0.1',                                      :require => false if RUBY_VERSION < '2.0.0'
end

group :development do
  gem 'travis',         :require => false
  gem 'travis-lint',    :require => false
  gem 'guard-rake',     :require => false
  gem 'puppet-strings', :require => false
end

group :system_tests do
  if beaker_version = ENV['BEAKER_VERSION']
    gem 'beaker', *location_for(beaker_version)
  end
  if beaker_rspec_version = ENV['BEAKER_RSPEC_VERSION']
    gem 'beaker-rspec', *location_for(beaker_rspec_version)
  else
    gem 'beaker-rspec',  :require => false
  end
  gem 'beaker-puppet_install_helper',  :require => false
end



if facterversion = ENV['FACTER_GEM_VERSION']
  gem 'facter', facterversion.to_s, :require => false, :groups => [:test]
else
  gem 'facter', :require => false, :groups => [:test]
end

if hieraversion = ENV['HIERA_GEM_VERSION']
  gem 'hiera', hieraversion.to_s, :require => false, :groups => [:test]
else
  gem 'hiera', :require => false, :groups => [:test]
end

ENV['PUPPET_VERSION'].nil? ? puppetversion = '~> 4.0' : puppetversion = ENV['PUPPET_VERSION'].to_s
gem 'puppet', puppetversion, :require => false, :groups => [:test]

# vim: syntax=ruby
