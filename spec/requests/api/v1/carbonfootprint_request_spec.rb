require 'spec_helper'

RSpec.describe 'Cloverly Microservice API' do
  it 'can return car footprint data' do
    VCR.use_cassette('cloverly_vehicle_footprint_request') do
      get '/api/v1/carbonfootprint?fuel_efficiency=25&trip_distance=55&fuel_type=gasoline'

      expect(last_response).to be_successful

      data = JSON.parse(last_response.body, symbolize_names: true)[:data]

      expect(data).to have_key(:equivalent_carbon_in_kg)
      expect(data).to have_key(:cloverly_offset_cost)
      expect(data[:cloverly_offset_cost]).to have_key(:currency)
      expect(data[:cloverly_offset_cost]).to have_key(:total)

      expect(data[:equivalent_carbon_in_kg]).to eq(19.555)
      expect(data[:cloverly_offset_cost]).to be_an(Hash)
      expect(data[:cloverly_offset_cost][:currency]).to eq('USD')
      expect(data[:cloverly_offset_cost][:total]).to eq(0.28)
    end
  end

  it 'will return null data if cloverly sends an error response' do
    VCR.use_cassette('cloverly_error_footprint_request') do
      get '/api/v1/carbonfootprint?fuel_efficiency=25&trip_distance=10000000&fuel_type=gasoline'

      data = JSON.parse(last_response.body, symbolize_names: true)[:data]

      expect(data[:equivalent_carbon_in_kg]).to be nil
      expect(data[:cloverly_offset_cost][:currency]).to be nil
      expect(data[:cloverly_offset_cost][:total]).to be nil
    end
  end
end
