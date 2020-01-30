#Total no of cars available
cars = 110
#capacity of car without driver
space_in_a_car = 3.0
#drivers available
drivers = 30
#no of passengers to travel
passengers = 90
#remaining cars (i.e., empy cars today)
cars_not_driven = cars - drivers
#cars those in On-Duty
cars_driven = drivers

#CarPool Capacity
carpool_capacity = cars_driven * space_in_a_car
#average passengers per car
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available"
puts "There are only #{drivers} drivers available"
puts "There will be #{cars_not_driven} empty cars today"
puts "We can transport #{carpool_capacity} people today"
puts "We have #{passengers} to CarPool Today"
puts "We need to put about #{average_passengers_per_car} in each car"
