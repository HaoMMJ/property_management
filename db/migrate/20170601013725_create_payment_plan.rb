class CreatePaymentPlan < ActiveRecord::Migration[5.0]
  def change
    create_table :payment_plans do |t|
      t.string :name
      t.boolean :is_deleted, default: false
      t.timestamps
    end
  end
end
