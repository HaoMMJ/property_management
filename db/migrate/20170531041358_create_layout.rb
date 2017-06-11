class CreateLayout < ActiveRecord::Migration[5.0]
  def change
    create_table :layouts do |t|
      t.integer :number_of_bedrooms
      t.integer :number_of_wc
      t.integer :number_of_living_rooms
      t.integer :number_of_kitchens
      t.integer :number_of_dinning_rooms
      t.boolean :is_deleted, default: false
      t.timestamps
    end
  end
end
