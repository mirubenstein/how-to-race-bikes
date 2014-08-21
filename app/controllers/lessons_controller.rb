class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
    render('lessons/index.html.erb')
  end

  def index_admin
    @lessons = Lesson.all
    render('lessons/index-admin.html.erb')
  end

  def new_admin
    @lesson = Lesson.new
    render('lessons/new-admin.html.erb')
  end

  def create_admin
    @lesson = Lesson.new(params[:lesson])
    if @lesson.save
      redirect_to("/admin")
    else
      render('lessons/show-admin.html.erb')
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
    render('lessons/show.html.erb')
  end

  def show_admin
    @lesson = Lesson.find(params[:id])
    render('lessons/show-admin.html.erb')
  end

  def update_admin
    @lesson = Lesson.find(params[:id])
    if @lesson.update(params[:lesson])
      flash[:notice] = "Your lesson was updated."
      redirect_to("/admin/lessons/#{@lesson.id}")
    else
      render('lessons/show-admin.html.erb')
    end
  end

  def destroy_admin
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    flash[:notice] = "Lesson deleted."
    redirect_to("/admin")
  end
end
