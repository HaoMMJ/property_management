class CreatePaymentPeriod < ActiveRecord::Migration[5.0]
  def change
    create_table :payment_periods do |t|
      t.string :name
      t.boolean :is_deleted, default: false
    end
  end
end
