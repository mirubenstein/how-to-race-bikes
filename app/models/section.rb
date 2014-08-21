class Section < ActiveRecord::Base
  default_scope {order('section_number ASC')}
  validates :name, presence: true
  validates :section_number, presence: true
  validates :section_number, numericality: true
  has_many :lessons, :dependent => :destroy
end
