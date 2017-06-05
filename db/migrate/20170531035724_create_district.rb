class CreateDistrict < ActiveRecord::Migration[5.0]
  def change
    create_table :districts do |t|
      t.string  :name
      t.integer :city_id
      t.boolean :is_deleted, default: false
    end
  end
end
