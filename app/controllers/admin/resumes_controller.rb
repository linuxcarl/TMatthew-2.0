class Admin::ResumesController < ApplicationController

  before_filter :login_required

  def index
    @resumes = Resume.order('created_at desc')
  end

  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new(params[:resume])
    if @resume.save
      redirect_to admin_resumes_path, notice: 'Resume created.'
    else
      render action: 'new'
    end
  end

  def edit
    @resume = Resume.find(params[:id])
  end

  def update
    @resume = Resume.find(params[:id])
    if @resume.update_attributes(params[:resume])
      redirect_to admin_resumes_path, notice: 'Resume updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @resume = Resume.find(params[:id])
    @resume.destroy
    redirect_to admin_resumes_path, notice: 'Resume destroyed.'
  end

end