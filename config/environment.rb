require 'figaro'
require './lib/cloverly_microservice.rb'
require './lib/services/cloverly_service.rb'
require './lib/poros/carbonfootprint.rb'
require './lib/serializers/carbonfootprint_serializer.rb'

Figaro.application = Figaro::Application.new(
  environment: 'production',
  path: File.expand_path("config/application.yml")
)
Figaro.load
