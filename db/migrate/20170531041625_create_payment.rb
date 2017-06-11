class CreatePayment < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.integer :contract_id
      t.datetime :applied_on
      t.integer :money
      t.string  :content
      t.boolean :is_deleted, default: false
      t.timestamps
    end
  end
end
