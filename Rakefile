# encoding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'rubygems'
require 'bundler'
require 'vkrb/version'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts 'Run `bundle install` to install missing gems'
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://guides.rubygems.org/specification-reference/ for more options
  gem.version = VKRB::VERSION
  gem.name = 'vkrb'
  gem.homepage = 'http://github.com/v-shmyhlo/vkrb'
  gem.license = 'MIT'
  gem.summary = %(vkontakte social network client for ruby)
  gem.description = %(vkontakte social network client for ruby)
  gem.email = 'aion.stu@gmail.com'
  gem.authors = ['Vlad Shmyhlo']
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

desc 'Code coverage detail'
task :simplecov do
  ENV['COVERAGE'] = 'true'
  Rake::Task['spec'].execute
end

task default: :spec

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = VKRB::VERSION

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "vkrb #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
