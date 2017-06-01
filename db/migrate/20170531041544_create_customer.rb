class CreateCustomer < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.date   :birthday
      t.string :birth_place
      t.string :id_card
      t.string :issued_by
      t.date   :issued_on
      t.string :tel
      t.string :address
      t.string :occupation
      t.string :email
    end
  end
end
