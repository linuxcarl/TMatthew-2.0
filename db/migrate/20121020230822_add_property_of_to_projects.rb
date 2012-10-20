class AddPropertyOfToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :property_of, :string
  end
end
