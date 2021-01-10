require 'faraday'
require './config/environment'

class CloverlyService
  class << self
    def carbon_data(trip_distance, fuel_efficiency, fuel_type)
      carbon_response = conn.post do |req|
        req.url '/2019-03-beta/estimates/vehicle'
        req.body = request_body(trip_distance, fuel_efficiency, fuel_type)
      end
      parse_it(carbon_response)
    end

    private

    def conn
      Faraday.new(url: 'https://api.cloverly.com') do |req|
        req.headers['Content-Type'] = 'application/json'
        req.headers['Authorization'] = "Bearer public_key:#{ENV['CLOVERY_PUBLIC_KEY']}"
      end
    end

    def parse_it(data)
      JSON.parse(data.body, sybolize_names: true)
    end

    def request_body(trip_distance, fuel_efficiency, fuel_type)
      JSON.generate(
        distance: format_distance(trip_distance),
        fuel_efficiency: format_fuel_efficiency(fuel_efficiency, fuel_type)
      )
    end

    def format_distance(trip_distance)
      {
        value: trip_distance.to_s,
        units: 'miles'
      }
    end

    def format_fuel_efficiency(fuel_efficiency, fuel_type)
      {
        value: fuel_efficiency.to_s,
        units: 'mpg',
        of: fuel_type.to_s
      }
    end
  end
end
