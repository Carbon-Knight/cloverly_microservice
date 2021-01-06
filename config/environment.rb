require 'figaro'
require './lib/cloverly_service'

Figaro.application = Figaro::Application.new(
  environment: 'production',
  path: File.expand_path("config/application.yml")
)
Figaro.load