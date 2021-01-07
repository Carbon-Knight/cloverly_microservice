require 'spec_helper'
require 'cloverly_microservice.rb'

RSpec.describe 'Cloverly Microservice API' do
  it "can return car footprint data" do
    get '/api/v1/carbonfootprint?fuel_efficiency=25&trip_distance=55'

    expect(last_response).to be_successful

    data = JSON.parse(last_response.body, symbolize_names: true)[:data]

    expect(data).to have_key(:equivalent_carbon_in_kg)
    expect(data).to have_key(:cloverly_offset_cost)
    expect(data[:cloverly_offset_cost]).to have_key(:currency)
    expect(data[:cloverly_offset_cost]).to have_key(:total)

    expect(data[:equivalent_carbon_in_kg]).to eq(12.153)
    expect(data[:cloverly_offset_cost]).to be_an(Hash)
    expect(data[:cloverly_offset_cost][:currency]).to eq('USD')
    expect(data[:cloverly_offset_cost][:total]).to eq(0.28)
  end
end
