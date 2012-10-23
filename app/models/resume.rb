class Resume < ActiveRecord::Base
  attr_accessible :file, :height, :page_1_photo, :page_2_photo, :display_photos

  mount_uploader :file, ResumeFileUploader
  mount_uploader :page_1_photo, ResumePagePhotoUploader
  mount_uploader :page_2_photo, ResumePagePhotoUploader

  def self.current
    order('created_at desc').first
  end

end
