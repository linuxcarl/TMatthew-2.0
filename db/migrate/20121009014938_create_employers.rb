class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :title
      t.integer :position, default: 999

      t.timestamps
    end
  end
end
