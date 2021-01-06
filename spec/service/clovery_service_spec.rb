require 'spec_helper'

RSpec.describe 'Cloverly Service' do
  it 'will return carbon data' do
    distance = 55
    fuel_efficiency = 25
    response = CloverlyService.carbon_data(distance, fuel_efficiency)

    expect(response).to be_a(Hash)
  end
end
