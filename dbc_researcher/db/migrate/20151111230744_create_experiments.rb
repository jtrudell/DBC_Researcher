class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.integer :proposal_id
      t.integer :cohort_id
      t.integer :user_id
      t.string :experiment_description
      t.string :required_supplies_for_experiment
      t.string :goal_description
      t.string :conclusions
      t.boolean :completed, {default: false}

      t.timestamps null: false
    end
  end
end
