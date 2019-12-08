class CreateEvents < ActiveRecord::Migration[5.1]
  
  def up
    create_table :events do |t|
      t.string :title
      t.string :photo
      t.text :description
      t.string :place

      t.timestamps
    end
  end
  
  def down
    drop_table :events
  end
end
