class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport", foreign_key: "from_airport_id"
  belongs_to :to_airport, class_name: "Airport", foreign_key: "to_airport_id"

  # Attribute: flight_number
  # Attribute: from_airport_id
  # Attribute: to_airport_id
  # Attribute: departure_time
  # Attribute: arrival_time
  # Attribute: duration
  # Attribute: price
  # Attribute: created_at
  # Attribute: updated_at
end
