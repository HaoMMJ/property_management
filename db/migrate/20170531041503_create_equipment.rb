class CreateEquipment < ActiveRecord::Migration[5.0]
  def change
    create_table :equipment do |t|
      t.string :name
      t.string :brand_name
      t.boolean :is_deleted, default: false
    end
  end
end
