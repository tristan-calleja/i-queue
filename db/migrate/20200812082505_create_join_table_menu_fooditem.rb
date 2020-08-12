class CreateJoinTableMenuFooditem < ActiveRecord::Migration[6.0]
  def change
    create_join_table :menus, :fooditems do |t|
      t.index [:menu_id, :fooditem_id]
      # t.index [:fooditem_id, :menu_id]
    end
  end
end
