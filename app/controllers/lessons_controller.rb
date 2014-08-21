class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
    render('lessons/index.html.erb')
  end

  def index_admin
    @lessons = Lesson.all
    render('lessons/index-admin.html.erb')
  end

  # def new_admin
  #   @lesson = Lesson.new
  #   render('lessons/new-admin.html.erb')
  # end

  def create_admin
    @lesson = Lesson.new
    @lesson = Lesson.new(params[:lesson])
    if @lesson.save
      flash[:notice] = "Lesson created."
      redirect_to("/admin")
    else
      render('admin/index.html.erb')
    end
  end

  def show
    @lesson = Lesson.find_by(number: params[:number])
    @next_lesson = @lesson.next
    @prev_lesson = @lesson.prev
    render('lessons/show.html.erb')
  end

  def show_admin
    @lesson = Lesson.find_by(number: params[:number])
    render('lessons/show-admin.html.erb')
  end

  def update_admin
    @lesson = Lesson.find_by(number: params[:number])
    if @lesson.update(params[:lesson])
      flash[:notice] = "Your lesson was updated."
      redirect_to("/admin/lessons/#{@lesson.number}")
    else
      render('lessons/show-admin.html.erb')
    end
  end

  def destroy_admin
    @lesson = Lesson.find_by(number: params[:number])
    @lesson.destroy
    flash[:notice] = "Lesson deleted."
    redirect_to("/admin")
  end
end
