class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.decimal :price
      t.references :fooditem, null: false, foreign_key: true
      t.date :startdate
      t.date :enddate

      t.timestamps
    end
  end
end
