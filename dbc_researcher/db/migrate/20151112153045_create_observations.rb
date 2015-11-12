class CreateObservations < ActiveRecord::Migration
  def change
    create_table :observations do |t|
      t.integer :experiment_id, null: false
      t.string :observation_text, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
    end
  end
end
