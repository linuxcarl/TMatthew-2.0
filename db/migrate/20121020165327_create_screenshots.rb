class CreateScreenshots < ActiveRecord::Migration
  def change
    create_table :screenshots do |t|
      t.integer :project_id
      t.string :photo
      t.integer :position, default: 999

      t.timestamps
    end
  end
end
