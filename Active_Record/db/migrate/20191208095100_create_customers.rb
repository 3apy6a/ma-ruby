# frozen_string_literal: true

class CreateCustomers < ActiveRecord::Migration[5.1]
  def up
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :telephone_number

      t.timestamps
    end
  end

  def down
    drop_table :customers
  end
end