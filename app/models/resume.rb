class Resume < ActiveRecord::Base
  attr_accessible :file, :height

  mount_uploader :file, ResumeFileUploader

  def self.current
    order('created_at desc').first
  end

end
