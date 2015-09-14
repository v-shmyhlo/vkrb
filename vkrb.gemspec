# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: vkrb 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = 'vkrb'
  s.version = '0.0.1'

  s.required_rubygems_version = Gem::Requirement.new('>= 0') if s.respond_to? :required_rubygems_version=
  s.require_paths = ['lib']
  s.authors = ['Vlad Shmyhlo']
  s.date = '2015-09-14'
  s.description = 'vkontakte social network client for ruby'
  s.email = 'aion.stu@gmail.com'
  s.extra_rdoc_files = [
    'LICENSE.txt',
    'README.rdoc'
  ]
  s.files = [
    '.document',
    '.rspec',
    '.ruby-gemset',
    '.ruby-version',
    'Gemfile',
    'Gemfile.lock',
    'LICENSE.txt',
    'README.rdoc',
    'Rakefile',
    'boot.rb',
    'lib/vkrb.rb',
    'lib/vkrb/api.rb',
    'lib/vkrb/api/messages.rb',
    'lib/vkrb/api/messages/get.rb',
    'lib/vkrb/api/messages/get_history.rb',
    'lib/vkrb/api/messages/send.rb',
    'lib/vkrb/api/requestable.rb',
    'lib/vkrb/api/users.rb',
    'lib/vkrb/api/users/get.rb',
    'lib/vkrb/config.rb',
    'lib/vkrb/errors.rb',
    'lib/vkrb/errors/bad_json_error.rb',
    'lib/vkrb/errors/request_error.rb',
    'lib/vkrb/errors/same_message_error.rb',
    'lib/vkrb/errors/server_error.rb',
    'lib/vkrb/errors/unauthorized_error.rb',
    'lib/vkrb/errors/vkrb_error.rb',
    'lib/vkrb/initializer.rb',
    'lib/vkrb/models.rb',
    'lib/vkrb/models/base.rb',
    'lib/vkrb/models/message.rb',
    'lib/vkrb/models/user.rb',
    'lib/vkrb/version.rb',
    'spec/spec_helper.rb',
    'spec/vkrb_spec.rb',
    'vkrb.gemspec'
  ]
  s.homepage = 'http://github.com/v-shmyhlo/vkrb'
  s.licenses = ['MIT']
  s.rubygems_version = '2.4.8'
  s.summary = 'vkontakte social network client for ruby'

  if s.respond_to? :specification_version
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0')
      s.add_runtime_dependency('typhoeus', ['>= 0'])
      s.add_runtime_dependency('nokogiri', ['>= 0'])
      s.add_runtime_dependency('yajl-ruby', ['>= 0'])
      s.add_runtime_dependency('activesupport', ['>= 0'])
      s.add_development_dependency('rspec', ['~> 2.8.0'])
      s.add_development_dependency('rdoc', ['~> 3.12'])
      s.add_development_dependency('bundler', ['~> 1.0'])
      s.add_development_dependency('jeweler', ['~> 2.0.1'])
      s.add_development_dependency('simplecov', ['>= 0'])
      s.add_development_dependency('rubocop', ['>= 0'])
      s.add_development_dependency('pry', ['>= 0'])
    else
      s.add_dependency('typhoeus', ['>= 0'])
      s.add_dependency('nokogiri', ['>= 0'])
      s.add_dependency('yajl-ruby', ['>= 0'])
      s.add_dependency('activesupport', ['>= 0'])
      s.add_dependency('rspec', ['~> 2.8.0'])
      s.add_dependency('rdoc', ['~> 3.12'])
      s.add_dependency('bundler', ['~> 1.0'])
      s.add_dependency('jeweler', ['~> 2.0.1'])
      s.add_dependency('simplecov', ['>= 0'])
      s.add_dependency('rubocop', ['>= 0'])
      s.add_dependency('pry', ['>= 0'])
    end
  else
    s.add_dependency('typhoeus', ['>= 0'])
    s.add_dependency('nokogiri', ['>= 0'])
    s.add_dependency('yajl-ruby', ['>= 0'])
    s.add_dependency('activesupport', ['>= 0'])
    s.add_dependency('rspec', ['~> 2.8.0'])
    s.add_dependency('rdoc', ['~> 3.12'])
    s.add_dependency('bundler', ['~> 1.0'])
    s.add_dependency('jeweler', ['~> 2.0.1'])
    s.add_dependency('simplecov', ['>= 0'])
    s.add_dependency('rubocop', ['>= 0'])
    s.add_dependency('pry', ['>= 0'])
  end
end
