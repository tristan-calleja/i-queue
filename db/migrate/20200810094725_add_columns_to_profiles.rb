class AddColumnsToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :description, :string
    add_reference :profiles, :user, null: false, foreign_key: true
  end
end
