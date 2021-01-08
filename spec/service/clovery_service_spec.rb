require 'spec_helper'

RSpec.describe 'Cloverly Service' do
  it 'will return carbon data' do
    trip_distance = 55
    fuel_efficiency = 25
    fuel_type = 'gasoline'

    VCR.use_cassette('cloverly_vehicle_footprint_request') do
      response = CloverlyService.carbon_data(trip_distance, fuel_efficiency, fuel_type)

      expect(response).to be_a(Hash)
      expect(response).to have_key('slug')
      expect(response).to have_key('equivalent_carbon_in_kg')
      expect(response).to have_key('cost')
      expect(response['cost']).to be_a(Hash)
      expect(response['cost']).to have_key('currency')
      expect(response['cost']).to have_key('total')

      expect(response['equivalent_carbon_in_kg']).to be_a(Float)
      expect(response['cost']['currency']).to be_a(String)
      expect(response['cost']['total']).to be_a(String)
    end
  end
end
