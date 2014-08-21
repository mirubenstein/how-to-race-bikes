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
end
