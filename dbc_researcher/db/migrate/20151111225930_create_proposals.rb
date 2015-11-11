class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.string :title
      t.string :problem_description
      t.string :hypothesis
      t.integer :user_id
      t.boolean :approved

      t.timestamps null: false
    end
  end
end
