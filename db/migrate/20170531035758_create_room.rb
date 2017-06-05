class CreateRoom < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.integer :building_id
      t.string  :room_no
      t.string  :room_status
      t.integer :lighting_direction_id
      t.integer :layout_id
      t.integer :floor
      t.float   :space
      t.date    :available_on
      t.date    :opened_at
      t.integer :price
      t.date    :price_change_at
      t.boolean :is_deleted, default: false
    end
  end
end
