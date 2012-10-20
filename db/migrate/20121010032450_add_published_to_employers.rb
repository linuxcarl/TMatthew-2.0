class AddPublishedToEmployers < ActiveRecord::Migration

  def change
    add_column :employers, :published, :boolean, default: false
  end

end
