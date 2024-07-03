person_hash = {}

first_name = gets.chomp
last_name = gets.chomp
age = gets.chomp
street_address = gets.chomp
city = gets.chomp
state = gets.chomp

person_hash[:first_name] = first_name
person_hash[:last_name] = last_name
person_hash[:age] = age
person_hash[:city] = city
person_hash[:street_address] = street_address
person_hash[:state] = state

puts person_hash
puts person_hash.keys
puts person_hash.values

person_hash[:first_name] = person_hash[:first_name].capitalize
person_hash[:state] = person_hash[:state].capitalize
puts person_hash

