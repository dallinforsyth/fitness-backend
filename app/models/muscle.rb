class Muscle < ApplicationRecord
  belongs_to :body_group
  has_many :workout_muscles
  has_many :workouts, through: :workout_muscles
end
