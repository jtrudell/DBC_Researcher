class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.string :name
      t.integer :year
      t.string :location
      t.integer :num_of_students

      t.timestamps null: false
    end
  end
end
