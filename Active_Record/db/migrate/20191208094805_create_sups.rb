class CreateSups < ActiveRecord::Migration[5.1]
  
  def up
    create_table :sups do |t|
      t.string :model
      t.string :avatar_url
      t.integer :user_quantity
      t.text :desc

      t.timestamps
    end
  end
  
  def down
    drop_table :sups
  end
end
