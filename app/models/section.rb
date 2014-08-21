class Section < ActiveRecord::Base
  default_scope {order('number ASC')}
  validates :name, presence: true
  validates :number, presence: true
  validates :number, numericality: true
  has_many :lessons
end
