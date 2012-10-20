class Employer < ActiveRecord::Base
  attr_accessible :position, :title, :published

  # associations
  has_many :projects
  has_many :published_projects, class_name: 'Project', conditions: {published: true}, order: :position
end
