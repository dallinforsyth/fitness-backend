class CreateBodyGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :body_groups do |t|
      t.string :body_part

      t.timestamps
    end
  end
end
