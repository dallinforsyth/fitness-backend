class AddUserIdToGoals < ActiveRecord::Migration[7.0]
  def change
    add_reference :goal, :user, null: false, foreign_key: true
  end
end
