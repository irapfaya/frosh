class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  def index
    @projects = Project.all
  end

  


  def show
    #@project = Project.find(params[:id])

  end

  def edit
    #@project = Project.find(params[:id])
  end
  

  def update
    #@project = Project.find(params[:id])
    if @project.update(project_params)

    flash[:notice] = "Project has been updated"
    redirect_to @project
    else
      flash.now[:alert] = "Project has not been updated."
      return "edit"
    end
  end

  

  private

  def set_project

     @project = Project.find(params[:id])
     rescue ActiveRecord::RecordNotFound
     flash[:alert] = "The project you were looking for could not be found."
     redirect_to projects_path

  end

   def project_params

    params.require(:project).permit(:name, :description)

  end

end



