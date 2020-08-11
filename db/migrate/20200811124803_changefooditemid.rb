class Changefooditemid < ActiveRecord::Migration[6.0]
  def change
    change_column_null :menus, :fooditem_id, true
  end
end
