require 'faraday'
require 'pry'
require './config/environment'

class CloverlyService
  class << self
    def carbon_data(trip_distance, fuel_efficiency)
      carbon_response = conn.post do |req|
        req.url '/2019-03-beta/estimates/vehicle'
        req.body = JSON.generate('distance':{'value':"#{trip_distance}",'units':'km'},'fuel_efficiency':{'value':"#{fuel_efficiency}",'units':'mpg','of':'gasoline'})
        req.headers['Content-Type'] = 'application/json'
        req.headers['Authorization'] = "Bearer public_key:#{ENV['CLOVERY_PUBLIC_KEY']}"
      end
      parse_it(carbon_response)
    end

    private

    def conn
      Faraday.new(:url => 'https://api.cloverly.com')
    end

    def parse_it(data)
      JSON.parse(data.body, sybolize_names: true)
    end
  end
end
