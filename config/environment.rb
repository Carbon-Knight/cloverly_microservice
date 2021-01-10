ENV['SINATRA_ENV'] ||= 'development'

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require 'figaro'
require './lib/cloverly_microservice'
require './lib/services/cloverly_service'
require './lib/poros/carbonfootprint'
require './lib/serializers/carbonfootprint_serializer'

Figaro.application = Figaro::Application.new(
  environment: 'production',
  path: File.expand_path('config/application.yml')
)
Figaro.load
