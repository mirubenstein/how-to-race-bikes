class AdminController < ApplicationController

  def index
    @lesson = Lesson.new
    @section = Section.new
    @lessons = Lesson.all
    @sections = Section.all
    render('admin/index.html.erb')
  end

end
