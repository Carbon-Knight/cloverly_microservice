class Carbonfootprint
  attr_reader :equivalent_carbon_in_kg,
              :currency,
              :total
  def initialize(data)
    require 'pry', binding.pry
    @equivalent_carbon_in_kg = data['equivalent_carbon_in_kg']
    @currency = data['cost']['currency']
    @total = data['cost']['total']
  end
end