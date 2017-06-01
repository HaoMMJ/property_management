class CreateProgress < ActiveRecord::Migration[5.0]
  def change
    create_table :progresses do |t|
      t.integer :step
      t.string  :name
      t.string  :note
      t.float   :payment_amount
      t.integer :payment_plan_id
    end
  end
end
