require 'simplecov'
require 'rspec'
require 'rack/test'
require 'webmock/rspec'
require 'vcr'

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

VCR.configure do |config|
  config.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
  config.hook_into :webmock
  config.configure_rspec_metadata!
  config.filter_sensitive_data('<CLOVERY_PUBLIC_KEY>') { ENV['CLOVERY_PUBLIC_KEY'] }
  config.filter_sensitive_data('<CLOVERY_PRIVATE_KEY>') { ENV['CLOVERY_PRIVATE_KEY'] }
  config.default_cassette_options = { record: :new_episodes }
end
