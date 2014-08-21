require 'spec_helper'

describe Section do
  it {should validate_presence_of :name}
  it {should validate_presence_of :number}
  it {should validate_numericality_of :number}
  it {should have_many :lessons}

  it "should destroy all lessons in a section if a section is detroyed" do
    section = Section.create(name: 'first', number: '1')
    lesson = Lesson.create(name: 'first', lesson: 'text', number: '1', section_id: section.id)
    section.destroy
    expect(Lesson.all).to eq []
  end
end
