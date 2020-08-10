class CreateOrderitems < ActiveRecord::Migration[6.0]
  def change
    create_table :orderitems do |t|
      t.references :fooditems, null: false, foreign_key: true
      t.integer :quantity
      t.decimal :totalprice

      t.timestamps
    end
  end
end
