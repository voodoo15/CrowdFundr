class ProjectsController < ApplicationController

  def index
    @projects = if params[:search]
      Project.where("LOWER(title) LIKE LOWER(?)", "%#{params[:search]}%")
    else
      Project.all
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user

    if @project.save
      @project.image.url # => '/url/to/file.png'
      @project.image.current_path # => 'path/to/file.png'
      @project.image_identifier # => 'file.png'
      redirect_to projects_url
     else
      render :new
    end
  end

  def edit
  end

  private
  def project_params
    params.require(:project).permit(:title, :short_description, :long_description, :risk_description,
                                    :start_date, :end_date, :created_at, :updated_at, :category_id,
                                    :funding_amount, :user_id, :image, rewards_attributes: [:title, :amount, :description])
  end
end
