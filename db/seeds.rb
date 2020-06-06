    # This file should contain all the record creation needed to seed the database with its default values.
    # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
    #
    # Examples:
    #
    #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
    #   Character.create(name: 'Luke', movie: movies.first)




    4.times do

    
        trip = Trip.create(
            
        name: Faker::Address.country,
        start_date: Faker::Date.between(from: 5.years.ago, to: 2.years.ago),
        end_date: Faker::Date.between(from: 1.years.ago, to: Date.today)
        )
    
            3.times do
                place = Place.create(
                    name: Faker::Address.state,
                    days: rand(10),
                    trip_id: trip.id
                )
    
    
                2.times do 
                    Address.create(
                        street: Faker::Address.street_name,
                        city: Faker::Address.city,
                        state: Faker::Address.state_abbr,
                        zip: Faker::Address.zip,
                        place_id: place.id
                
                    )
                end
            end
        end
                
            
            
            
            # for i in (1..4)
                        # seat = Seat.create(
                        #     number: i,
                        #     ticket_id: ticket.id
                        #         )
                        #         Menu.create(
                        #                 item: 'glue',
                        #                 cost: 1,
                        #                 seat_id: seat.id
                        #         )
                        #         Menu.create(
                        #                 item: Faker::Science.scientist,
                        #                 cost: rand(6),
                        #                 seat_id: seat.id
                        #         )
                        # end
                
    
    
            
    
    