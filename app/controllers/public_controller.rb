class PublicController < ApplicationController

  def index
  end

  def resume
  	@menu_item = "resume"
  end

  def about
  	@menu_item = "about"
  end

end