class Admin::EmployersController < ApplicationController

  before_filter :login_required

  def index
    @employers = Employer.order(:position)
  end

  def new
    @employer = Employer.new
  end

  def create
    @employer = Employer.new(params[:employer])
    if @employer.save
      redirect_to [:admin, @employer], notice: 'Employer successfully created.'
    else
      render action: 'new'
    end
  end

  def show
    @employer = Employer.find(params[:id])
  end

  def edit
    @employer = Employer.find(params[:id])
  end

  def update
    @employer = Employer.find(params[:id])
    if @employer.update_attributes(params[:employer])
      redirect_to [:admin, @employer], notice: 'Employer successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @employer = Employer.find(params[:id])
    @employer.destroy
    redirect_to admin_employers_path, notice: 'Employer successfully deleted.'
  end

end