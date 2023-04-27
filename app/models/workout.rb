class Workout < ApplicationRecord
  belongs_to :body_group
  has_many :workout_muscles
  has_many :muscles, through: :workout_muscles
end
