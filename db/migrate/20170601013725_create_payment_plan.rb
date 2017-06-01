class CreatePaymentPlan < ActiveRecord::Migration[5.0]
  def change
    create_table :payment_plans do |t|
      t.string :name
    end
  end
end
