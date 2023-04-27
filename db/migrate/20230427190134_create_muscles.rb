class CreateMuscles < ActiveRecord::Migration[7.0]
  def change
    create_table :muscles do |t|
      t.string :name
      t.references :body_group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
