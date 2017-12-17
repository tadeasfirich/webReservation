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



#Buildings
if Building.count == 0
  3.times {
    Building.create!(:title => building_name, :code => building_code)
  }
end

#Rooms
if Room.count == 0
  15.times {
    r = rand * (11-1) + 1
    Room.create!(:title => room_name, :code => room_code, :building => Building.order('RANDOM()').first)
  }
end

#Teacher
if Teacher.count == 0
  10.times {
    Teacher.create!(:first_name => first_name, :last_name => last_name, :email => email)
  }
end

#Courses
if Course.count == 0
  10.times {
    r = rand * (3-1) + 1
    s = rand * (3-1) + 1
    Course.create!(:title => course_title, :code => building_code, :language => r.to_i, :study_type => s.to_i)
  }
end

#Students
if Student.count == 0
  20.times {
    r = rand * (3-1) + 1
    Student.create!(:first_name => first_name, :last_name => last_name, :email => email, :study_type => r.to_i)
  }
end

#StudentAssigments
if StudentAssigment.count == 0
  50.times {
    StudentAssigment.create!(:course => Course.order('RANDOM()').first, :student => Student.order('RANDOM()').first)
  }
end

#TeacherAssigments
if TeacherAssigment.count == 0
  50.times {
    TeacherAssigment.create!(:teacher => Teacher.order('RANDOM()').first, :course => Course.order('RANDOM()').first)
  }
end

#Lessons
if Lesson.count == 0
  year = "2017"
  13.times {
    mounth = '12'
    day = Date.today.strftime("%d")
    hour = (rand * (11-1) + 8).to_i
    hour2 = (hour.to_i + 3).to_s
    minutes = "00"
    datetime = "#{year}-#{mounth}-#{day} #{hour}:#{minutes}:00"
    datetime2 = "#{year}-#{mounth}-#{day} #{hour2}:#{minutes}:00"
    Lesson.create!(:start_at => datetime, :end_at => datetime2, :durration => 3, :room => Room.order('RANDOM()').first,
                   :teacher => Teacher.order('RANDOM()').first, :course => Course.order('RANDOM()').first)
  }
end