class Airport < ApplicationRecord
  has_many :departing_flights, class_name: "Flight", foreign_key: "from_airport_id"
  has_many :arriving_flights, class_name: "Flight", foreign_key: "to_airport_id"

  # Attribute: name
  # Attribute: code
  # Attribute: city
  # Attribute: country
  # Attribute: timezone
  # Attribute: latitude
  # Attribute: longitude
  # Attribute: created_at
  # Attribute: updated_at
end
