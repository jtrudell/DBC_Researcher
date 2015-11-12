FactoryGirl.define do
  factory :experiment do
    proposal_id 1
    cohort_id 2
    experiment_description "amazing"
    required_supplies_for_experiment "money"
    goal_description "winning"
  end

  trait :completed_experiment do
    proposal_id 2
    cohort_id 3
    experiment_description "super amazing"
    required_supplies_for_experiment "lots of money"
    goal_description "winning always"
    conclusions "this experiment was a success!"
    completed true
  end

end
