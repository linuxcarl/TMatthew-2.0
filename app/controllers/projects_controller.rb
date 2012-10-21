class ProjectsController < ApplicationController

  def index
  	@menu_item = "portfolio"
  	@employers = Employer.where(published: true).order(:position).includes(published_projects: :screenshots)
  end

end