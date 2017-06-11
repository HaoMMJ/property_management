class CreateContract < ActiveRecord::Migration[5.0]
  def change
    create_table :contracts do |t|
      t.integer :room_id
      t.integer :customer_id
      t.integer :progress_id
      t.boolean :is_deleted, default: false
      t.date    :register_on
      t.timestamps
    end
  end
end
