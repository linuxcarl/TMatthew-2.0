class Project < ActiveRecord::Base
  attr_accessible :employer_id, :link, :long_description, :position, :poster, :published, :short_description, :title, :permalink, :property_of

  mount_uploader :poster, ProjectPosterUploader

  # associations
  belongs_to :employer
  has_many :screenshots, order: :position
    
end
