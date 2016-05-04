class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
       redirect_to projects_url
    end
  end

  def edit
  end

  private
  def project_params
    params.require(:project).permit(:title, :short_description, :long_description, :risk_description, :start_date, :end_date, :created_at, :updated_at, :category_id, :funding_amount)
  end
end
