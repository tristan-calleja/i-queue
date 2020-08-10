class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.date :paymentdate
      t.decimal :amount
      t.string :paymenttype

      t.timestamps
    end
  end
end
