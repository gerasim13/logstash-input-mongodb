Gem::Specification.new do |s|
  s.name = 'logstash-input-mongodb'
  s.version = '0.4.1'
  s.licenses = ['Apache-2.0']
  s.summary = "This takes entries from mongodb as an input to logstash."
  s.description = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program"
  s.authors = ["Philip Hutchins"]
  s.email = 'flipture@gmail.com'
  s.homepage = "http://www.phutchins.com"
  s.require_paths = ["lib"]

  # Files
  s.files = Dir[
  'lib/**/*',
  'spec/**/*',
  'vendor/**/*',
  '*.gemspec',
  '*.md',
  'CONTRIBUTORS',
  'Gemfile',
  'LICENSE',
  'NOTICE.TXT'
]
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "input" }

  # Gem dependencies
  s.add_runtime_dependency 'jdbc-sqlite3', '~> 3.20', '>= 3.20.1'
  s.add_runtime_dependency 'mongo', '~> 0'
  s.add_runtime_dependency 'rufus-scheduler', '~> 0'
  s.add_runtime_dependency 'stud', '~> 0'
  s.add_runtime_dependency 'sequel', '~> 0'
  s.add_runtime_dependency 'logstash-core-plugin-api', '>= 1.60', '<= 2.99'
  s.add_runtime_dependency 'logstash-core'
  s.add_runtime_dependency 'logstash-codec-plain'
  s.add_development_dependency 'logstash-devutils'
end
