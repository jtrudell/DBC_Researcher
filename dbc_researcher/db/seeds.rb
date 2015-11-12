# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

names = ["Purple Martins", "Mud Turtles", "Bobolinks", "Copperheads", "Island Foxes", "Chorus Frogs", "Squirrels", "Fiddler Crabs", "Sea Lions"]

names.each do |name|
  Cohort.create(name: "#{name}", year: 2014, location: "Minneapolis", num_of_students: rand(8..29))
  Cohort.create(name: "#{name}", year: 2015, location: "Minneapolis", num_of_students: rand(8..29))
  Cohort.create(name: "#{name}", year: 2016, location: "Minneapolis", num_of_students: rand(8..29))
  Cohort.create(name: "#{name}", year: 2014, location: "Evanston", num_of_students: rand(8..29))
  Cohort.create(name: "#{name}", year: 2015, location: "Evanston", num_of_students: rand(8..29))
  Cohort.create(name: "#{name}", year: 2016, location: "Evanston", num_of_students: rand(8..29))
  Cohort.create(name: "#{name}", year: 2014, location: "Grosse Pointe Woods", num_of_students: rand(8..29))
  Cohort.create(name: "#{name}", year: 2015, location: "Grosse Pointe Woods", num_of_students: rand(8..29))
  Cohort.create(name: "#{name}", year: 2016, location: "Grosse Pointe Woods", num_of_students: rand(8..29))
end
