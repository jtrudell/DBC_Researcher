FactoryGirl.define do
  factory :user do
    name "Stefanie"
    title "Teacher"
    email "stef@devbootcamp.com"
    password_digest "password"
  end

  trait :admin do
    name "Joe"
    title "Faculty"
    email "joe@devbootcamp.com"
    password_digest "password"
    admin true
  end

  trait :student do
    name "Bob"
    title "Student"
    email "bob@bob.com"
    password_digest "password"
  end

  trait :duplicate do
    name "Jill"
    title "Faculty"
    email "stef@devbootcamp.com"
    password_digest "password"
  end

end
