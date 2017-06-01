class CreateBuilding < ActiveRecord::Migration[5.0]
  def change
    create_table :buildings do |t|
      t.string  :name
      t.integer :building_type_id
      t.integer :city_id
      t.string  :address
      t.date    :built_on
      t.string  :building_status
      t.integer :payment_plan_id
    end
  end
end
