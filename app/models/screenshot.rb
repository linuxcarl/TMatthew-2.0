class Screenshot < ActiveRecord::Base
  attr_accessible :photo, :position, :project_id

  mount_uploader :photo, ScreenshotPhotoUploader

  # associations
  belongs_to :project
end
