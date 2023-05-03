class Workout < ApplicationRecord
  has_many :workout_muscles
  has_many :muscles, through: :workout_muscles
end
