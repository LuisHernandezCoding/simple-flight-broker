# Simple Flight Broker

## Short Description:
This project allows users to search for and book one-way flights. It includes dropdown menus for selecting departure and arrival airports, a date dropdown for selecting the flight date, and a dropdown for selecting the number of passengers.

## Previews:
Not Disponible Now

## Long Description:
The One-Way Flight Booker project allows users to easily search for and book one-way flights. It includes dropdown menus for selecting the departure and arrival airports, a date dropdown that only includes dates with available flights, and a dropdown for selecting the number of passengers (1-4). 

Once the search form is submitted, the FlightsController will detect the query parameters and use them to pull matching flights from the database. The search results will be displayed in the app/views/flights/index.html.erb view, along with a form for selecting a flight. The form will include radio buttons for each returned flight, and will submit to the #new action of the BookingsController using a GET method. The form will also include a hidden field with the number of passengers.

The #new action of the BookingsController will render a form for entering booking and passenger information. The form will include fields for entering personal information for each passenger, and will submit to the #create action of the BookingsController using a POST method. The #create action will create a new Booking object, linking it to the appropriate Flight, and will also accept nested attributes for creating new Passenger objects.

The One-Way Flight Booker project also includes a model for Airport, with associations for departing and arriving flights, and a model for Flight, with associations for the departure and arrival airports. The database is seeded with flights, and the project makes use of smart querying model methods to pull flights from the database based on the search criteria.

## Features:
- Dropdown menus for selecting departure and arrival airports, flight date, and number of passengers
- Form for selecting a flight from the search results
- Form for entering booking and passenger information
- Models for Airport and Flight, with associations and smart querying model methods
- Seeded database with flights

## Learning Outcomes:
- How to build a form for searching and booking flights
- How to create and use models with associations in a Rails project
- How to use smart querying model methods to pull data from the database
- How to use nested form fields and accept nested attributes

## Topics of Interest:
- Ruby on Rails
- Forms
- Models and associations
- Database querying

## Contributing:
We welcome contributions to this project! If you have an idea for a new feature or have found a bug, please open an issue or submit a pull request.

## Author:
👤 **Luis Hernandez**

- GitHub: [@LuisHernandezCoding](https://github.com/LuisHernandezCoding)
