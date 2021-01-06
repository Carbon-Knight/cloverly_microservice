class CarbonfootprintSerializer
  inlude FastJsonapi::ObjectSerializer
  attributes :equivalent_carbon_in_kg,
             :currency,
             :total
end
