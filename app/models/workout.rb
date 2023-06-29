class Workout < ApplicationRecord
  has_many :workout_muscles
  has_many :muscles, through: :workout_muscles
  has_many :body_groups, through: :muscles
  belongs_to :user
end
