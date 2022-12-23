class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.string :flight_number
      t.string :departure_time
      t.string :arrival_time
      t.string :duration
      t.string :price
      
      t.references :from_airport, index: true
      t.references :to_airport, index: true

      t.timestamps
    end
  end
end
