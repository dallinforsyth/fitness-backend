class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.string :img
      t.string :muscle
      t.integer :body_group

      t.timestamps
    end
  end
end
