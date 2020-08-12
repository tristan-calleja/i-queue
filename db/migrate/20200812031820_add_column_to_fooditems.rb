class AddColumnToFooditems < ActiveRecord::Migration[6.0]
  def change
    add_reference :fooditems, :menu, null: true, foreign_key: true
  end
end
