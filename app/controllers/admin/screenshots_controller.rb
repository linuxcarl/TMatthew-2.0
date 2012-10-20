class Admin::ScreenshotsController < ApplicationController

  before_filter :login_required
  before_filter :set_project

  def new
    @screenshot = @project.screenshots.new
  end

  def create
    @screenshot = @project.screenshots.new(params[:screenshot])
    if @screenshot.save
      redirect_to [:admin, @project], notice: 'Screenshot successfully created.'
    else
      render action: 'new'
    end
  end

  def edit
    @screenshot = @project.screenshots.find(params[:id])
  end

  def update
    @screenshot = @project.screenshots.find(params[:id])
    if @screenshot.update_attributes(params[:screenshot])
      redirect_to [:admin, @project], notice: 'Screenshot successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @screenshot = @project.screenshots.find(params[:id])
    @screenshot.destroy
    redirect_to [:admin, @project], notice: 'Screenshot successfully deleted.'
  end

private

  def set_project
    @project = Project.find params[:project_id]
  end

end