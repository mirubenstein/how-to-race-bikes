require 'spec_helper'

describe Lesson do
  it {should validate_presence_of :name}
  it {should validate_presence_of :lesson}
  it {should validate_presence_of :number}
  it {should validate_numericality_of :number}
  it {should belong_to :section}

  it 'returns the lesson with the next-highest number than the current lesson' do
    current_lesson = Lesson.create({name: 'lesson1', number: 2, lesson: 'stuff'})
    next_lesson = Lesson.create({name: 'lesson2', number: 3, lesson: 'stuff'})
    current_lesson.next.should eq next_lesson
  end

end
