require 'simplecov'
require 'rspec'
require 'rack/test'

SimpleCov.start

ENV['RACK_ENV'] = 'test'

require File.expand_path '../lib/cloverly_microservice.rb', __dir__
require File.expand_path '../lib/services/cloverly_service.rb', __dir__
require File.expand_path '../lib/poros/carbonfootprint.rb', __dir__
require File.expand_path '../lib/serializers/carbonfootprint_serializer.rb', __dir__

module RSpecMixin
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end
end

RSpec.configure { |c| c.include RSpecMixin }
