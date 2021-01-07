require 'sinatra'
require './config/environment'

get '/api/v1/carbonfootprint' do
  content_type :json
  carbonfootprint = Carbonfootprint.new(
    CloverlyService.carbon_data(
      params[:trip_distance],
      params[:fuel_efficiency],
      params[:fuel_type]
    )
  )

  CarbonfootprintSerializer.serialize_vehicle_footprint(carbonfootprint).to_json
end
