class CreateFooditems < ActiveRecord::Migration[6.0]
  def change
    create_table :fooditems do |t|
      t.string :name
      t.integer :quantity
      t.decimal :unitprice
      t.string :itemcategory

      t.timestamps
    end
  end
end
