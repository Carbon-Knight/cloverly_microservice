require 'spec_helper'

RSpec.describe 'Carbonfootprint poro' do
  it 'creates objects' do
    response_data = { 'slug' => '20210106-f8fc5161a8c83b63b1a6878b1750ca2a',
                      'environment' => 'sandbox',
                      'state' => 'estimated',
                      'total_cost_in_usd_cents' => 28,
                      'estimated_at' => '2021-01-06T15:30:30.484Z',
                      'equivalent_carbon_in_kg' => 12.153,
                      'electricity_in_kwh' => 0.0,
                      'rec_cost_in_usd_cents' => 3,
                      'transaction_cost_in_usd_cents' => 25,
                      'cost' =>
                    { 'currency' => 'USD',
                      'total' => '0.28',
                      'transaction' => '0.25',
                      'offset' => '0.03' },
                      'pretty_url' =>
                    'https://dashboard.cloverly.com/receipt/20210106-f8fc5161a8c83b63b1a6878b1750ca2a' }
    carbon_footprint = Carbonfootprint.new(response_data)

    expect(carbon_footprint.equivalent_carbon_in_kg).to eq(response_data['equivalent_carbon_in_kg'])
    expect(carbon_footprint.currency).to eq(response_data['cost']['currency'])
    expect(carbon_footprint.total).to eq(response_data['cost']['total'])
  end
end
