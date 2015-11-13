# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

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

User.create(name: "Alice", email: "alice@devbootcamp.com", password: "password", title: "Faculty", admin: true)
User.create(name: "Bill", email: "bill@devbootcamp.com", password: "password", title: "Faculty", admin: true)
User.create(name: "Jill", email: "jill@devbootcamp.com", password: "password", title: "Teacher")
User.create(name: "Steve", email: "steve@devbootcamp.com", password: "password", title: "Teacher")

20.times do
  User.create(name: Faker::Name.name , email: Faker::Name.first_name + "@devbootcamp.com", password: "password", title: "Instructor")
end

20.times do
  Proposal.create(title: Faker::Lorem.sentence, problem_description: Faker::Lorem.sentence, hypothesis: Faker::Lorem.sentence, user_id: Faker::Number.between(1, 20), approved: [true, false].sample)
end

40.times do
  Experiment.create(proposal_id: Faker::Number.between(1, 20), cohort_id: Faker::Number.between(1, 10), user_id: Faker::Number.between(1, 10), experiment_description: Faker::Lorem.sentences, required_supplies_for_experiment: Faker::Lorem.words(4), goal_description: Faker::Lorem.sentence(2), conclusions: Faker::Lorem.sentence(4), completed: [true, false].sample)
end
