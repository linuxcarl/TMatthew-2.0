class PublicController < ApplicationController

  def index
  end

  def resume
    @menu_item = "resume"
    @resume = Resume.current
  end

  def download_resume
    if @resume = Resume.current
      send_file open(@resume.file.url), type: "application/pdf", filename: 'ResumeTylerBrown.pdf'
    else
      redirect_to resume_path
    end
  end

  def about
    @menu_item = "about"
  end

end