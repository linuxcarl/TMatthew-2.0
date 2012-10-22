class AddHeightToResumes < ActiveRecord::Migration
  def change
    add_column :resumes, :height, :integer, default: 2445
  end
end
