# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.destroy_all

ActiveRecord::Base.connection.reset_sequence!('id', 'airports')

Airport.create(name: "Los Angeles International Airport", code: "LAX", city: "Los Angeles", country: "United States", timezone: "America/Los_Angeles", latitude: "33.942536", longitude: "-118.408075")
Airport.create(name: "John F. Kennedy International Airport", code: "JFK", city: "New York", country: "United States", timezone: "America/New_York", latitude: "40.639751", longitude: "-73.778925")
Airport.create(name: "San Francisco International Airport", code: "SFO", city: "San Francisco", country: "United States", timezone: "America/Los_Angeles", latitude: "37.618972", longitude: "-122.374889")
Airport.create(name: "Miami International Airport", code: "MIA", city: "Miami", country: "United States", timezone: "America/New_York", latitude: "25.79325", longitude: "-80.290556")
# Airport.create(name: "Chicago O'Hare International Airport", code: "ORD", city: "Chicago", country: "United States", timezone: "America/Chicago", latitude: "41.978603", longitude: "-87.904842")
# Airport.create(name: "Dallas/Fort Worth International Airport", code: "DFW", city: "Dallas", country: "United States", timezone: "America/Chicago", latitude: "32.896828", longitude: "-97.038002")
# Airport.create(name: "Denver International Airport", code: "DEN", city: "Denver", country: "United States", timezone: "America/Denver", latitude: "39.861656", longitude: "-104.672111")
# Airport.create(name: "Minneapolis-St. Paul International Airport", code: "MSP", city: "Minneapolis", country: "United States", timezone: "America/Chicago", latitude: "44.881956", longitude: "-93.221767")
# Airport.create(name: "Newark Liberty International Airport", code: "EWR", city: "Newark", country: "United States", timezone: "America/New_York", latitude: "40.6925", longitude: "-74.168667")
# Airport.create(name: "Hartsfield-Jackson Atlanta International Airport", code: "ATL", city: "Atlanta", country: "United States", timezone: "America/New_York", latitude: "33.640444", longitude: "-84.426944")
# Airport.create(name: "Charlotte Douglas International Airport", code: "CLT", city: "Charlotte", country: "United States", timezone: "America/New_York", latitude: "35.214", longitude: "-80.943139")
# Airport.create(name: "Seattle-Tacoma International Airport", code: "SEA", city: "Seattle", country: "United States", timezone: "America/Los_Angeles", latitude: "47.449", longitude: "-122.309306")
# Airport.create(name: "Orlando International Airport", code: "MCO", city: "Orlando", country: "United States", timezone: "America/New_York", latitude: "28.429394", longitude: "-81.308994")
# Airport.create(name: "Phoenix Sky Harbor International Airport", code: "PHX", city: "Phoenix", country: "United States", timezone: "America/Phoenix", latitude: "33.434278", longitude: "-112.012639")
# Airport.create(name: "Detroit Metropolitan Wayne County Airport", code: "DTW", city: "Detroit", country: "United States", timezone: "America/New_York", latitude: "42.212444", longitude: "-83.353389")
# Airport.create(name: "McCarran International Airport", code: "LAS", city: "Las Vegas", country: "United States", timezone: "America/Los_Angeles", latitude: "36.080056", longitude: "-115.15225")
# Airport.create(name: "Washington Dulles International Airport", code: "IAD", city: "Washington", country: "United States", timezone: "America/New_York", latitude: "38.944533", longitude: "-77.455811")
# Airport.create(name: "George Bush Intercontinental Airport", code: "IAH", city: "Houston", country: "United States", timezone: "America/Chicago", latitude: "29.984433", longitude: "-95.341442")
# Airport.create(name: "San Diego International Airport", code: "SAN", city: "San Diego", country: "United States", timezone: "America/Los_Angeles", latitude: "32.733556", longitude: "-117.189667")
# Airport.create(name: "Philadelphia International Airport", code: "PHL", city: "Philadelphia", country: "United States", timezone: "America/New_York", latitude: "39.871944", longitude: "-75.241139")
# Airport.create(name: "Boston Logan International Airport", code: "BOS", city: "Boston", country: "United States", timezone: "America/New_York", latitude: "42.364347", longitude: "-71.005181")

Flight.destroy_all

ActiveRecord::Base.connection.reset_sequence!('id', 'flights')

# Now create 1 flights from each airport to each other airport on each day, for 7 days

Airport.all.each do |airport|
  Airport.all.each do |airport2|
    next if airport == airport2

    7.times do |day|
      5.times do |hour|
        random_flight = rand(1..100).to_s.rjust(3, '0')
        random_duration = (rand(1..4) * hour).to_s.rjust(2, '0')
        random_price = rand(10..100) * 10
        Flight.create(
          flight_number: "AA#{random_flight}-#{day}#{random_duration.to_s.rjust(2, '0')}",
          departure_time: Date.today + day,
          arrival_time: Date.today + day + 1,
          duration: "#{random_duration}:" + rand(10..59).to_s.rjust(2, '0'),
          price: "#{random_price}",
          from_airport_id: airport.id,
          to_airport_id: airport2.id
        )
      end
    end
  end
end