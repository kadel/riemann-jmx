require 'rubygems'
require 'rubygems/package_task'
require 'find'
 
# Don't include resource forks in tarballs on Mac OS X.
ENV['COPY_EXTENDED_ATTRIBUTES_DISABLE'] = 'true'
ENV['COPYFILE_DISABLE'] = 'true'
 
# Gemspec
gemspec = Gem::Specification.new do |s|
  s.rubyforge_project = 'riemann-jmx'
  
  s.name     = 'riemann-jmx'
  s.version  = '0.0.1'
  s.author   = 'David Schoonover'
  s.email    = 'dsc@less.ly'
  s.homepage = 'https://github.com/dsc/riemann-jmx'
  s.platform = Gem::Platform::RUBY
  s.summary  = 'Utility to submit jmx metrics to Riemann'
  
  s.add_dependency 'jmx4r'
  s.add_dependency 'riemann-tools'
  
  s.files = FileList['bin/*', 'LICENSE'].to_a
  s.executables |= Dir.entries('bin/')
  
  s.required_ruby_version = '>= 1.8.7'
end

Gem::PackageTask.new gemspec do |p|
end

