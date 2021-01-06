require 'spec_helper'

RSpec.describe 'Cloverly Service' do
  it 'will return carbon data' do
    distance = 55
    fuel_efficiency = 25
    response = CloverlyService.carbon_data(distance, fuel_efficiency)

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
    require 'pry', binding.pry
  end
end
