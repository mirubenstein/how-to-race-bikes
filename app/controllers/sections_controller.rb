class SectionsController < ApplicationController
  def create_admin
    @secion = Section.new
    @section = Section.new(params[:section])
    if @section.save
      flash[:notice] = "Section created."
      redirect_to("/admin")
    else
      render('admin/index.html.erb')
    end
  end

  def update_admin
    @section = Section.find_by(number: params[:number])
    if @section.update(params[:section])
      flash[:notice] = "Your section was updated."
      redirect_to("/admin")
    end
  end
end
