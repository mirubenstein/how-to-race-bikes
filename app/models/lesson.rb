class Lesson < ActiveRecord::Base
  validates :name, presence: true
  validates :lesson, presence: true
  validates :number, presence: true
  validates :number, numericality: true
end
