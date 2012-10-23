class AddFieldsToResume < ActiveRecord::Migration
  def change
  	add_column :resumes, :page_1_photo, :string
  	add_column :resumes, :page_2_photo, :string
  	add_column :resumes, :display_photos, :boolean, default: false
  end
end
