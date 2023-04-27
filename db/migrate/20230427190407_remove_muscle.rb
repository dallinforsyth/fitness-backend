class RemoveMuscle < ActiveRecord::Migration[7.0]
  def change
    remove_column :workouts, :muscle, :string
    remove_column :workouts, :body_group, :integer
  end
end
