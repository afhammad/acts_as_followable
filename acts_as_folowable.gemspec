require File.join(File.dirname(__FILE__), 'lib', 'acts_as_followable', 'version')

Gem::Specification.new do |s|
  s.name = 'acts_as_followable'
  s.version = ActsAsFollowable::Version::STRING
  
  s.date = %q{2010-11-10}
  s.summary = "ActsAsFollowable - Model following."
  s.description = "Implements the following functionality where one model can be followed by other models and and vice versa."
  s.authors  = ['Kristijan Sedlak']
  s.email    = 'xpepermint@gmail.com'
  s.homepage = 'http://github.com/xpepermint/acts_as_followable'

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version = %q{1.3.6}
  
  s.has_rdoc = true
  s.rdoc_options = ['--main', 'README.rdoc', '--charset=UTF-8']
  s.extra_rdoc_files = ['README.rdoc', 'MIT-LICENSE']

  s.require_paths = ["lib"]
  s.executables = []
  
  s.files = Dir['Rakefile', '{bin,lib,test,spec,config,tasks}/**/*', 'README*', 'MIT-LICENSE']
end
