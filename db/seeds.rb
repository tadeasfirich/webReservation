# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'ffaker'

def building_name
  FFaker::AddressUK.city
end

def building_code
  FFaker::AddressUK.country_code
end

def room_name
  FFaker::Music.song
end

def room_code
  FFaker::Color.hex_code
end

10.times {
  Building.create!(:title => building_name, :code => building_code)
}
10.times {
  r = rand * (11-1) + 1
  Room.create!(:title => room_name, :code => room_code, :building => Building.find(r.to_i))
}
