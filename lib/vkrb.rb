require 'typhoeus'
require 'nokogiri'
require 'yajl'
require 'active_support/all'
require 'digest'

require 'vkrb/version'
require 'vkrb/errors'
require 'vkrb/configurable'
require 'vkrb/authorizer'
require 'vkrb/models'
require 'vkrb/api'
require 'vkrb/client'
require 'vkrb/parallelable'

module VKRB
  extend VKRB::Parallelable
end
