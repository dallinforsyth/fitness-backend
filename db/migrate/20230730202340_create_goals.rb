class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.string :title
      t.string :description
      t.string :target_date

      t.timestamps
    end
  end
end
