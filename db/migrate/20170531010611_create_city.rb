class CreateCity < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string  :name
      t.integer :prefecture_id
    end
  end
end
