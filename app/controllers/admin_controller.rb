class AdminController < ApplicationController

  def index
    @lesson = Lesson.new
    @lessons = Lesson.all
    render('admin/index.html.erb')
  end

end
