i = 1
5.times do
  name = "Trip #{i}"
  trip = Trip.create(name: name, country: "United States", length: rand(14))
  i += 1
  puts "Trip: #{name} created"
end