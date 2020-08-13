class CreateJoinTableFooditemsOrders < ActiveRecord::Migration[6.0]
  def change
    create_join_table :fooditems, :orders do |t|
       t.index [:fooditem_id, :order_id]
      # t.index [:order_id, :fooditem_id]
    end
  end
end
