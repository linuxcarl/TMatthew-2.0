class CreateProjects < ActiveRecord::Migration

  def change
    create_table :projects do |t|
      t.string :title
      t.integer :employer_id
      t.text :short_description
      t.text :long_description
      t.string :link
      t.integer :position, default: 999
      t.boolean :published, default: false
      t.string :poster
      t.string :permalink

      t.timestamps
    end
  end

end
