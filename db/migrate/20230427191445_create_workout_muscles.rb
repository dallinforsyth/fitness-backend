class CreateWorkoutMuscles < ActiveRecord::Migration[7.0]
  def change
    create_table :workout_muscles do |t|
      t.references :workout, null: false, foreign_key: true
      t.references :muscle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
