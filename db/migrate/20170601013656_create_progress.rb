class CreateProgress < ActiveRecord::Migration[5.0]
  def change
    create_table :progresses do |t|
      t.integer :step
      t.integer :payment_period_id
      t.string  :note
      t.float   :payment_amount
      t.integer :payment_plan_id
      t.boolean :is_deleted, default: false
      t.timestamps
    end
  end
end
