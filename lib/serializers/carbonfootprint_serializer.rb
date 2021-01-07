class CarbonfootprintSerializer
  def self.serialize_vehicle_footprint(footprint)
    {
      data: {
        equivalent_carbon_in_kg: footprint.equivalent_carbon_in_kg,
        cloverly_offset_cost: {
          currency: footprint.currency,
          total: footprint.total
        }
      }
    }
  end
end
