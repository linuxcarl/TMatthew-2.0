class PublicController < ApplicationController

  def index
    @tweets = JSON.parse(`curl "http://api.twitter.com/1/statuses/user_timeline.json?screen_name=tybro0103&count=8"`) rescue []
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

  def jwindowcrop
    readme_markdown = `curl https://raw.github.com/tybro0103/jWindowCrop/master/README.markdown` rescue ""
    @readme_html = BlueCloth.new(readme_markdown).to_html.html_safe rescue nil
  end

end