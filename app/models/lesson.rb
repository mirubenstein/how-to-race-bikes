class Lesson < ActiveRecord::Base
  default_scope {order('number ASC')}
  validates :name, presence: true
  validates :lesson, presence: true
  validates :number, presence: true
  validates :number, numericality: true
  belongs_to :section

  def next
    Lesson.find_by(number: self.number + 1)
  end

  def prev
    Lesson.find_by(number: self.number - 1)
  end

  def self.list_by_section(id)
    lessons = []
    Lesson.where(section_id: id).each { |lesson| lessons << lesson }
    lessons
  end
end
