5.times do
  title = Faker::Name.title
  cate = CategoryTour.create! title: title

  5.times do
    name = "Tour du lich Da Nang"
    schedule = "Da Nang - Hoi An - Hue"
    place_departure = "Da Nang"
    time = "4 day 3 night"
    people_number = 100
    transport = "bus"
    price = 500
    content = "Tour du lich Da Nang abc..xyz"
    time_start = "10/10/2016"
    rating = 4
    tour = Tour.create!(category_tour_id: cate.id, name: name, schedule: schedule,
      place_departure: place_departure, time: time,
      people_number: people_number, transport: transport,
      price: price, content: content, time_start: time_start, rating: rating)
    tour.save!
  end
end
