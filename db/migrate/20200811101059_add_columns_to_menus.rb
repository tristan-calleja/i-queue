class AddColumnsToMenus < ActiveRecord::Migration[6.0]
  def change
    add_column :menus, :menu_name, :string
  end
end
