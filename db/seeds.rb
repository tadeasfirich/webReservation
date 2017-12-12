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

def first_name
  FFaker::NameCS.first_name
end

def last_name
  FFaker::NameCS.last_name
end

def email
  FFaker::Internet.email
end

def course_title
  FFaker::Food.fruit
end



# #Buildings
# 10.times {
#   Building.create!(:title => building_name, :code => building_code)
# }
#
# #Rooms
# 10.times {
#   r = rand * (11-1) + 1
#   Room.create!(:title => room_name, :code => room_code, :building => Building.find(r.to_i))
# }
#
# #Teacher
# 10.times {
#   Teacher.create!(:first_name => first_name, :last_name => last_name, :email => email)
# }
#
# #Courses
# #TODO: dodělat language a study_type
# 10.times {
#   r = rand * (2-1) + 1
#   s = rand * (2-1) + 1
#   Building.create!(:title => course_title, :code => building_code, :language => 'CZECH', :ENGLISH => 'PART_TIME')
# }
#
# #Students
# 10.times {
#   r = rand * (2-1) + 1
#   Building.create!(:title => room_name, :code => building_code)
# }

puts Building.attribute_names