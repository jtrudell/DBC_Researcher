FactoryGirl.define do
  factory :proposal do
    title "my super proposal"
    problem_description "everything sucks. like, everything."
    hypothesis "if I do whatever I tell you to do, everything will stop sucking."
    user_id 1
  end

  trait :approved_proposal do
    title "my even better proposal"
    problem_description "a few things sucks."
    hypothesis "if we go to a lot of meetings and talk about our feelings, things will suck less."
    user_id 2
    approved true
  end
end
