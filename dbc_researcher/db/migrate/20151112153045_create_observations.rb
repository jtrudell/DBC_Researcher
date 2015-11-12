class CreateObservations < ActiveRecord::Migration
  def change
    create_table :observations do |t|
      t.integer :experiment
      t.string :observation_text
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
