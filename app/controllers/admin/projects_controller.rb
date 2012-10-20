class Admin::ProjectsController < ApplicationController

  before_filter :login_required

  def index
    @projects = Project.order(:employer_id, :position).includes(:employer)
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      redirect_to [:admin, @project], notice: 'Project created.'
    else
      render action: 'new'
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      redirect_to [:admin, @project], notice: 'Project updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to admin_projects_path, notice: 'Project destroyed.'
  end

end